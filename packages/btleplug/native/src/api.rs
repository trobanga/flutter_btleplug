use crate::ble;
use anyhow::Result;
use flutter_rust_bridge::StreamSink;

pub fn init(sink: StreamSink<String>) -> Result<()> {
    ble::create_runtime(sink)?;
    Ok(())
}

pub fn ble_scan(sink: StreamSink<String>, filter: Vec<String>) -> Result<()> {
    ble::scan(sink, filter)?;
    Ok(())
}

pub fn ble_stop_scan() -> Result<()> {
    ble::stop_scan()?;
    Ok(())
}
