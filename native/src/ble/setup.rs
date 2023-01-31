#[cfg(target_os = "android")]
mod android;
#[cfg(target_os = "android")]
pub use android::*;

#[cfg(any(
    target_os = "ios",
    target_os = "windows",
    target_os = "macos",
    target_os = "linux"
))]
mod general;
#[cfg(any(
    target_os = "ios",
    target_os = "windows",
    target_os = "macos",
    target_os = "linux"
))]
pub use general::*;

// Dummy functions to silence rust-analyzer
#[cfg(not(any(
    target_os = "android",
    target_os = "ios",
    target_os = "windows",
    target_os = "macos",
    target_os = "linux"
)))]
pub static RUNTIME: once_cell::sync::OnceCell<tokio::runtime::Runtime> =
    once_cell::sync::OnceCell::new();
#[cfg(not(any(
    target_os = "android",
    target_os = "ios",
    target_os = "windows",
    target_os = "macos",
    target_os = "linux"
)))]
pub fn create_runtime(sink: flutter_rust_bridge::StreamSink<String>) -> Result<(), super::Error> {
    Ok(())
}
