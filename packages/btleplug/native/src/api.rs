use crate::ble::{self, BleDevice};
use crate::logger::{self, LogEntry};
use anyhow::Result;
use flutter_rust_bridge::{frb, StreamSink};

pub fn init() -> Result<()> {
    ble::init()
}

#[frb(mirror(BleDevice))]
struct _BleDevice {
    id: String,
    name: String,
}

/// Scan for Bluetooth Low Energy devices and send the results through the given sink.
///
/// # Parameters
///
/// * `sink` - A stream sink that new discovered devices will be passed through.
/// * `filter` - A list of filter strings to apply to the scan result.
///
/// # Return
///
/// Returns a `Result<()>` indicating if the scan operation has successfully started.
pub fn ble_scan(sink: StreamSink<BleDevice>, filter: Vec<String>) -> Result<()> {
    ble::scan(sink, filter)
}

pub fn ble_stop_scan() -> Result<()> {
    ble::stop_scan()
}

#[frb(mirror(LogEntry))]
struct _LogEntry {
    time_millis: u64,
    msg: String,
}

pub fn create_log_stream(s: StreamSink<LogEntry>) {
    logger::create_log_stream(s);
}
