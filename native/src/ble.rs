use anyhow::Result;
use btleplug::api::{bleuuid::BleUuid, Central, CentralEvent, Manager as _, ScanFilter};
use btleplug::platform::{Adapter, Manager};
use flutter_rust_bridge::StreamSink;
use futures::stream::StreamExt;
use jni::objects::GlobalRef;
use jni::JavaVM;
use once_cell::sync::OnceCell;
use tokio::runtime::Runtime;

async fn get_central(manager: &Manager) -> Adapter {
    let adapters = manager.adapters().await.unwrap();
    adapters.into_iter().nth(0).unwrap()
}

pub fn scan(sink: StreamSink<String>) -> Result<()> {
    sink.add("start scan".to_string());

    let runtime = RUNTIME.get().unwrap();
    runtime.block_on(async {
        sink.add("manager".to_string());

        let manager = Manager::new().await.unwrap();

        sink.add("central".to_string());
        // get the first bluetooth adapter
        // connect to the adapter
        let central = get_central(&manager).await;

        sink.add("events".to_string());
        // Each adapter has an event stream, we fetch via events(),
        // simplifying the type, this will return what is essentially a
        // Future<Result<Stream<Item=CentralEvent>>>.
        let mut events = central.events().await.unwrap();

        sink.add("start scan".to_string());
        let vm = JAVAVM.get().unwrap();
        let _new_env = vm.attach_current_thread().unwrap();
        // start scanning for devices
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
    });
    Ok(())
}

static CLASS_LOADER: OnceCell<GlobalRef> = OnceCell::new();
static JAVAVM: OnceCell<JavaVM> = OnceCell::new();
static RUNTIME: OnceCell<Runtime> = OnceCell::new();

// #[cfg(target_os = "android")]
pub fn create_runtime(sink: StreamSink<String>) -> Result<()> {
    let vm = JAVAVM.get().ok_or(anyhow::anyhow!("Cannot get JAVAVM"))?;
    let env = vm.attach_current_thread().unwrap();

    // let _class = env.find_class("com/nonpolynomial/btleplug/android/impl/Peripheral")?;
    let thread = env
        .call_static_method(
            "java/lang/Thread",
            "currentThread",
            "()Ljava/lang/Thread;",
            &[],
        )?
        .l()?;
    let class_loader = env
        .call_method(
            thread,
            "getContextClassLoader",
            "()Ljava/lang/ClassLoader;",
            &[],
        )?
        .l()?;

    CLASS_LOADER.set(env.new_global_ref(class_loader)?);

    let runtime = {
        tokio::runtime::Builder::new_multi_thread()
            .enable_all()
            .on_thread_start(move || {
                sink.add("WRAPPING NEW THREAD IN VM".to_string());

                // We now need to call the following code block via JNI calls. God help us.
                //
                //  java.lang.Thread.currentThread().setContextClassLoader(
                //    java.lang.ClassLoader.getSystemClassLoader()
                //  );
                sink.add("Adding classloader to thread".to_string());

                let vm = JAVAVM.get().unwrap();
                let new_env = vm.attach_current_thread().unwrap();

                let thread = new_env
                    .call_static_method(
                        "java/lang/Thread",
                        "currentThread",
                        "()Ljava/lang/Thread;",
                        &[],
                    )
                    .unwrap()
                    .l()
                    .unwrap();
                new_env
                    .call_method(
                        thread,
                        "setContextClassLoader",
                        "(Ljava/lang/ClassLoader;)V",
                        &[CLASS_LOADER.get().unwrap().as_obj().into()],
                    )
                    .unwrap();
                sink.add("Classloader added to thread".to_string());
            })
            .build()
            .unwrap()
    };
    RUNTIME.set(runtime);
    Ok(())
}

// #[cfg(target_os = "android")]
#[no_mangle]
pub extern "C" fn JNI_OnLoad(vm: jni::JavaVM, _res: *const std::os::raw::c_void) -> jni::sys::jint {
    let env = vm.get_env().unwrap();
    jni_utils::init(&env).unwrap();
    btleplug::platform::init(&env).unwrap();
    JAVAVM.set(vm);
    jni::JNIVersion::V6.into()
}
