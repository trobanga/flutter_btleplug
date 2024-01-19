use anyhow::Result;
use btleplug::{api::Peripheral as _, platform::PeripheralId};
use flutter_rust_bridge::frb;
use tokio::time;

/// Wrapper struct around btleplug::platform::Peripheral that adds the last_seen variable.
///
#[frb(ignore)]
#[derive(Debug, Clone)]
pub struct Peripheral {
    pub peripheral: btleplug::platform::Peripheral,
    pub last_seen: time::Instant,
    pub is_connected: bool,
}

impl Peripheral {
    #[frb(ignore)]
    pub fn new(peripheral: btleplug::platform::Peripheral) -> Peripheral {
        Self {
            peripheral,
            last_seen: time::Instant::now(),
            is_connected: false,
        }
    }

    #[frb(ignore)]
    pub fn id(&self) -> PeripheralId {
        self.peripheral.id()
    }

    pub async fn name(&self) -> Option<String> {
        if let Ok(Some(properties)) = self.peripheral.properties().await {
            properties.local_name
        } else {
            None
        }
    }

    pub async fn connect(&self) -> Result<()> {
        self.peripheral.connect().await?;
        Ok(())
    }

    pub async fn disconnect(&self) -> Result<()> {
        self.peripheral.disconnect().await?;
        Ok(())
    }

    pub fn is_connected(&self) -> bool {
        self.is_connected
    }
}
