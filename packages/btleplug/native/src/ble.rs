use anyhow::Result;
use btleplug::api::{bleuuid::BleUuid, Central, CentralEvent, Manager as _, ScanFilter};
use btleplug::platform::{Adapter, Manager};
use flutter_rust_bridge::StreamSink;
use futures::stream::StreamExt;
use once_cell::sync::OnceCell;
use tokio::sync::mpsc;

mod setup;
pub use setup::*;
mod error;
pub use error::Error;

use crate::logger::log;

enum Command {
    Scan {
        sink: StreamSink<BleDevice>,
        filter: Vec<String>,
    },
}

impl std::fmt::Debug for Command {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.debug_struct("Scan").finish()
    }
}

static TX: OnceCell<mpsc::UnboundedSender<Command>> = OnceCell::new();

pub fn init() -> Result<()> {
    create_runtime()?;
    let runtime = RUNTIME.get().ok_or(Error::RuntimeNotInitialized)?;

    let (tx, mut rx) = mpsc::unbounded_channel::<Command>();
    TX.set(tx).map_err(|_| Error::TxAlreadySet)?;

    runtime.spawn(async move {
        while let Some(msg) = rx.recv().await {
            match msg {
                Command::Scan { sink, filter } => inner_scan(sink, filter).await.unwrap(),
            }
        }
    });
    Ok(())
}

fn send(command: Command) -> Result<()> {
    let tx = TX.get().ok_or(Error::TxNotInitialized)?;
    tx.send(command)?;
    Ok(())
}

pub struct BleDevice {
    pub id: String,
    pub name: String,
}

pub fn scan(sink: StreamSink<BleDevice>, filter: Vec<String>) -> Result<()> {
    send(Command::Scan { sink, filter })
}

async fn inner_scan(sink: StreamSink<BleDevice>, _filter: Vec<String>) -> Result<()> {
    log("manager");
    let manager = Manager::new().await.expect("cannot fail");

    // get the first bluetooth adapter
    // connect to the adapter
    log("central");
    let central = get_central(&manager).await;

    // Each adapter has an event stream, we fetch via events(),
    // simplifying the type, this will return what is essentially a
    // Future<Result<Stream<Item=CentralEvent>>>.
    log("events");
    let mut events = central.events().await.expect("cannot fail");

    // start scanning for devices
    log("start scan");
    central.start_scan(ScanFilter::default()).await.unwrap();

    log("while");
    // Print based on whatever the event receiver outputs. Note that the event
    // receiver blocks, so in a real program, this should be run in its own
    // thread (not task, as this library does not yet use async channels).
    while let Some(event) = events.next().await {
        log(format!("{:?}", event));
        match event {
            CentralEvent::DeviceDiscovered(id) => {
                log(format!("DeviceDiscovered: {:?}", &id));
                let device = BleDevice {
                    id: id.to_string(),
                    name: "".to_string(),
                };
                sink.add(device);
            }
            CentralEvent::DeviceConnected(id) => {
                log(format!("DeviceConnected: {:?}", id));
            }
            CentralEvent::DeviceDisconnected(id) => {
                log(format!("DeviceDisconnected: {:?}", id));
            }
            CentralEvent::ManufacturerDataAdvertisement {
                id,
                manufacturer_data,
            } => {
                log(format!(
                    "ManufacturerDataAdvertisement: {:?}, {:?}",
                    id, manufacturer_data
                ));
            }
            CentralEvent::ServiceDataAdvertisement { id, service_data } => {
                log(format!(
                    "ServiceDataAdvertisement: {:?}, {:?}",
                    id, service_data
                ));
            }
            CentralEvent::ServicesAdvertisement { id, services } => {
                let services: Vec<String> =
                    services.into_iter().map(|s| s.to_short_string()).collect();
                log(format!("ServicesAdvertisement: {:?}, {:?}", id, services));
            }
            _ => {}
        }
    }
    log("Scan finished");
    Ok(())
}

async fn get_central(manager: &Manager) -> Adapter {
    let adapters = manager.adapters().await.expect("cannot fail");
    adapters.into_iter().next().expect("cannot fail")
}

pub fn stop_scan() -> Result<()> {
    let rt = RUNTIME.get().expect("Runtime not initialized");
    rt.spawn(async {});

    Ok(())
}
