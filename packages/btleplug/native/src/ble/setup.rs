#[cfg(target_os = "android")]
mod android;
#[cfg(target_os = "android")]
pub use android::*;

#[cfg(target_os = "ios")]
mod ios;
#[cfg(target_os = "ios")]
pub use ios::*;

use once_cell::sync::OnceCell;
use tokio::runtime::Runtime;
pub static RUNTIME: OnceCell<Runtime> = once_cell::sync::OnceCell::new();

#[cfg(not(any(target_os = "android", target_os = "ios")))]
pub fn create_runtime() -> Result<(), super::Error> {
    use std::sync::atomic::{AtomicUsize, Ordering};

    use crate::logger::log;

    log("Create runtime");

    let runtime = tokio::runtime::Builder::new_multi_thread()
        .enable_all()
        .thread_name_fn(|| {
            static ATOMIC_ID: AtomicUsize = AtomicUsize::new(0);
            let id = ATOMIC_ID.fetch_add(1, Ordering::SeqCst);
            format!("intiface-thread-{}", id)
        })
        .on_thread_stop(move || {
            log("Stopping thread");
        })
        .build()
        .unwrap();
    RUNTIME.set(runtime).map_err(|_| super::Error::Runtime)?;
    Ok(())
}
