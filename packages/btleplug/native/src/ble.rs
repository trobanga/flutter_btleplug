use anyhow::Result;
use btleplug::api::{bleuuid::BleUuid, Central, CentralEvent, Manager as _, ScanFilter};
use btleplug::platform::{Adapter, Manager};
use flutter_rust_bridge::StreamSink;
use futures::stream::StreamExt;

mod setup;
pub use setup::*;
mod error;
pub use error::Error;

async fn get_central(manager: &Manager) -> Adapter {
    let adapters = manager.adapters().await.expect("cannot fail");
    adapters.into_iter().nth(0).expect("cannot fail")
}

pub fn scan(sink: StreamSink<String>, filter: Vec<String>) -> Result<()> {
    sink.add("start scan".to_string());

    let runtime = RUNTIME.get().expect("Runtime not initialized");
    runtime.block_on(inner_scan(sink.clone()))?;
    sink.add("scan() finished".to_string());
    Ok(())
}

async fn inner_scan(sink: StreamSink<String>) -> Result<()> {
    sink.add("manager".to_string());
    let manager = Manager::new().await.expect("cannot fail");

    // get the first bluetooth adapter
    // connect to the adapter
    sink.add("central".to_string());
    let central = get_central(&manager).await;

    // Each adapter has an event stream, we fetch via events(),
    // simplifying the type, this will return what is essentially a
    // Future<Result<Stream<Item=CentralEvent>>>.
    sink.add("events".to_string());
    let mut events = central.events().await.expect("cannot fail");

    #[cfg(target_os = "android")]
    let vm = JAVAVM.get().unwrap();
    #[cfg(target_os = "android")]
    let _new_env = vm.attach_current_thread().unwrap();

    // start scanning for devices
    sink.add("start scan".to_string());
    central.start_scan(ScanFilter::default()).await.unwrap();

    sink.add("while".to_string());
    // Print based on whatever the event receiver outputs. Note that the event
    // receiver blocks, so in a real program, this should be run in its own
    // thread (not task, as this library does not yet use async channels).
    while let Some(event) = events.next().await {
        sink.add(format!("{:?}", event));
        match event {
            CentralEvent::DeviceDiscovered(id) => {
                sink.add(format!("DeviceDiscovered: {:?}", id));
            }
            CentralEvent::DeviceConnected(id) => {
                sink.add(format!("DeviceConnected: {:?}", id));
            }
            CentralEvent::DeviceDisconnected(id) => {
                sink.add(format!("DeviceDisconnected: {:?}", id));
            }
            CentralEvent::ManufacturerDataAdvertisement {
                id,
                manufacturer_data,
            } => {
                sink.add(format!(
                    "ManufacturerDataAdvertisement: {:?}, {:?}",
                    id, manufacturer_data
                ));
            }
            CentralEvent::ServiceDataAdvertisement { id, service_data } => {
                sink.add(format!(
                    "ServiceDataAdvertisement: {:?}, {:?}",
                    id, service_data
                ));
            }
            CentralEvent::ServicesAdvertisement { id, services } => {
                let services: Vec<String> =
                    services.into_iter().map(|s| s.to_short_string()).collect();
                sink.add(format!("ServicesAdvertisement: {:?}, {:?}", id, services));
            }
            _ => {}
        }
    }
    sink.add("Scan finished".to_string());
    Ok(())
}

pub fn stop_scan() -> Result<()> {
    let rt = RUNTIME.get().expect("Runtime not initialized");
    rt.spawn(async {});

    Ok(())
}
