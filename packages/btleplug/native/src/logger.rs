use flutter_rust_bridge::StreamSink;
use once_cell::sync::OnceCell;
use std::sync::RwLock;

pub struct LogEntry {
    pub time_millis: i64,
    pub msg: String,
}

static LOGGER: OnceCell<RwLock<StreamSink<LogEntry>>> = OnceCell::new();

pub fn create_log_stream(s: StreamSink<LogEntry>) {
    if LOGGER.get().is_none() {
        let _ = LOGGER.set(RwLock::new(s));
        log("Logger ready!");
    } else {
        panic!("tim eto panic");
    }
}

pub fn log<S: AsRef<str>>(msg: S) {
    if let Some(logger) = LOGGER.get() {
        let logger = logger.read().unwrap();
        logger.add(LogEntry {
            time_millis: 0,
            msg: msg.as_ref().to_string(),
        });
    }
}
