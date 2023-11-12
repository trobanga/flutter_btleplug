use anyhow::Result;
use btleplug::api::{bleuuid::BleUuid, Central, CentralEvent, ScanFilter};
use flutter_rust_bridge::StreamSink;
use futures::stream::StreamExt;
use tokio::time;
use uuid::Uuid;

use crate::logger::log;

use super::{init_adapter, send, Command, Peripheral, CENTRAL, DEVICES};

/// Removes all devices that haven't been seen for longer than [timeout] seconds, from the [DEVICES] list.
///
/// # Parameters
/// * timeout - A `u64` representing the maximum age of a device (in seconds)
///   that should be allowed to remain in the list.
///
/// # Example
///
/// Removing all devices that were last seen more than ten seconds ago:
///
/// ```rust
/// # use async_fn;
/// async_fn::remove_stale_devices(10);
/// ```
async fn remove_stale_devices(timeout: u64) {
    let mut devices = DEVICES.lock().await;
    devices.retain(|_, d| d.is_connected() || d.last_seen.elapsed().as_secs() < timeout);
}

/// This is the BleDevice intended to show in Dart/Flutter
#[derive(Debug, Clone)]
pub struct BleDevice {
    pub id: String,
    pub name: String,
}

impl BleDevice {
    async fn from_peripheral(peripheral: &Peripheral) -> Self {
        Self {
            id: peripheral.id().to_string(),
            name: peripheral.name().await.unwrap_or_default(),
        }
    }
}

/// Helper function to send all [BleDevice]s to Dart/Flutter.
///
/// # Arguments
///
/// sink: StreamSink<Vec<BleDevice>>
///     The StreamSink to which the Vec<BleDevice> should be sent
///
/// # Return
///
/// Returns false if the stream is closed.
async fn send_devices(sink: &StreamSink<Vec<BleDevice>>) -> bool {
    let devices = DEVICES.lock().await;
    let mut d = vec![];
    for device in devices.values() {
        let dev = BleDevice::from_peripheral(&device).await;
        d.push(dev.clone())
    }
    sink.add(d)
}

/// This function is used to scan for BLE devices and returns the results via the given stream sink.
///
/// Parameters
///
/// sink: StreamSink<Vec<BleDevice>> - A stream sink to which the results are send
///
/// filter: Vec<String> - A vector of strings to filter the results with
pub fn scan(sink: StreamSink<Vec<BleDevice>>, filter: Vec<String>) -> Result<()> {
    send(Command::Scan { sink, filter })
}

pub async fn inner_scan(sink: StreamSink<Vec<BleDevice>>, filter: Vec<String>) -> Result<()> {
    let central = CENTRAL.get_or_init(init_adapter).await;
    let mut events = central.events().await?;

    // start scanning for devices
    log(format!(
        "start scanning on {}",
        central.adapter_info().await?
    ));
    central
        .start_scan(ScanFilter {
            services: filter.iter().map(|s| Uuid::parse_str(s).unwrap()).collect(),
        })
        .await?;

    let mut device_send_interval = time::interval(time::Duration::from_secs(1));
    loop {
        tokio::select! {
            _ = device_send_interval.tick() => {
                remove_stale_devices(3).await;
                if send_devices(&sink).await == false {
                    break;
                }
            }
            Some(event) = events.next() => {
                // log(format!("{:?}", event));
                match event {
                    CentralEvent::DeviceDiscovered(id) => {
                        log(format!("DeviceDiscovered: {:?}", &id));
                        let peripheral = central.peripheral(&id).await?;
                        let peripheral = Peripheral::new(peripheral);
                        let mut devices = DEVICES.lock().await;
                        devices.insert(id.to_string(), peripheral);
                    }
                    CentralEvent::DeviceUpdated(id) => {
                        let mut devices = DEVICES.lock().await;
                        if let Some(device) = devices.get_mut(&id.to_string()) {
                            device.last_seen = time::Instant::now();
                        }
                    }
                    CentralEvent::DeviceConnected(id) => {
                        log(format!("DeviceConnected: {:?}", id));
                        let mut devices = DEVICES.lock().await;
                        if let Some(device) = devices.get_mut(&id.to_string()) {
                            device.is_connected = true;
                        }
                    }
                    CentralEvent::DeviceDisconnected(id) => {
                        log(format!("DeviceDisconnected: {:?}", id));
                        let mut devices = DEVICES.lock().await;
                        if let Some(device) = devices.get_mut(&id.to_string()) {
                            device.is_connected = false;
                        }
                    }
                    CentralEvent::ManufacturerDataAdvertisement {
                        id,
                        manufacturer_data,
                    } => {
                        // log(format!(
                        //     "ManufacturerDataAdvertisement: {:?}, {:?}",
                        //     id, manufacturer_data
                        // ));
                    }
                    CentralEvent::ServiceDataAdvertisement { id, service_data } => {
                        // log(format!(
                        //     "ServiceDataAdvertisement: {:?}, {:?}",
                        //     id, service_data
                        // ));
                    }
                    CentralEvent::ServicesAdvertisement { id, services } => {
                        let services: Vec<String> =
                            services.into_iter().map(|s| s.to_short_string()).collect();
                        // log(format!("ServicesAdvertisement: {:?}, {:?}", id, services));
                    }
                }
            }
        }
    }
    central.stop_scan().await?;
    log("Scan finished");
    Ok(())
}
