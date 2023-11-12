use std::{collections::HashMap, fmt::Display};

use super::{init_adapter, send, Command, CENTRAL};
use anyhow::Result;
use btleplug::api::{Central, CentralEvent};
use flutter_rust_bridge::StreamSink;
use futures::stream::StreamExt;

pub struct MapData {
    pub key: String,
    pub data: Vec<u8>,
}

impl MapData {
    fn from_data<T: Display>(data: HashMap<T, Vec<u8>>) -> Vec<Self> {
        data.into_iter()
            .map(|(k, v)| MapData {
                key: k.to_string(),
                data: v,
            })
            .collect()
    }
}

pub enum BleEvent {
    DeviceDiscovered {
        id: String,
    },
    DeviceUpdated {
        id: String,
    },
    DeviceConnected {
        id: String,
    },
    DeviceDisconnected {
        id: String,
    },
    ManufacturerDataAdvertisement {
        id: String,
        manufacturer_data: Vec<MapData>,
    },
    ServiceDataAdvertisement {
        id: String,
        service_data: Vec<MapData>,
    },
    ServicesAdvertisement {
        id: String,
        services: Vec<String>,
    },
}

impl BleEvent {
    fn from_central_event(event: CentralEvent) -> Self {
        match event {
            CentralEvent::DeviceDiscovered(id) => BleEvent::DeviceDiscovered { id: id.to_string() },
            CentralEvent::DeviceUpdated(id) => BleEvent::DeviceUpdated { id: id.to_string() },
            CentralEvent::DeviceConnected(id) => BleEvent::DeviceConnected { id: id.to_string() },
            CentralEvent::DeviceDisconnected(id) => {
                BleEvent::DeviceDisconnected { id: id.to_string() }
            }
            CentralEvent::ManufacturerDataAdvertisement {
                id,
                manufacturer_data,
            } => BleEvent::ManufacturerDataAdvertisement {
                id: id.to_string(),
                manufacturer_data: MapData::from_data(manufacturer_data),
            },
            CentralEvent::ServiceDataAdvertisement { id, service_data } => {
                BleEvent::ServiceDataAdvertisement {
                    id: id.to_string(),
                    service_data: MapData::from_data(service_data),
                }
            }
            CentralEvent::ServicesAdvertisement { id, services } => {
                BleEvent::ServicesAdvertisement {
                    id: id.to_string(),
                    services: services.iter().map(|id| id.to_string()).collect(),
                }
            }
        }
    }
}

pub fn events(sink: StreamSink<BleEvent>) -> Result<()> {
    send(Command::Event { sink })
}

pub async fn inner_events(sink: StreamSink<BleEvent>) -> Result<()> {
    let central = CENTRAL.get_or_init(init_adapter).await;
    let mut events = central.events().await?;
    loop {
        if let Some(event) = events.next().await {
            if !sink.add(BleEvent::from_central_event(event)) {
                break;
            }
        }
    }
    Ok(())
}
