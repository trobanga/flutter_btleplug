use crate::ble;
use anyhow::Result;
use flutter_rust_bridge::StreamSink;

pub fn init(sink: StreamSink<String>) -> Result<()> {
    ble::create_runtime(sink)?;
    Ok(())
}

pub fn ble_scan(sink: StreamSink<String>) -> Result<()> {
    ble::scan(sink)?;
    Ok(())
}
