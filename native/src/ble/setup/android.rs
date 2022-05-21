use flutter_rust_bridge::StreamSink;
use jni::objects::GlobalRef;
use jni::{JNIEnv, JavaVM};
use once_cell::sync::OnceCell;
use tokio::runtime::Runtime;

use crate::ble::Error;

static CLASS_LOADER: OnceCell<GlobalRef> = OnceCell::new();
pub static JAVAVM: OnceCell<JavaVM> = OnceCell::new();
pub static RUNTIME: OnceCell<Runtime> = OnceCell::new();

pub fn create_runtime(sink: StreamSink<String>) -> Result<(), Error> {
    let vm = JAVAVM.get().ok_or(Error::JavaVM)?;
    let env = vm.attach_current_thread().unwrap();

    setup_class_loader(&env);

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
                let env = vm.attach_current_thread().unwrap();

                let thread = env
                    .call_static_method(
                        "java/lang/Thread",
                        "currentThread",
                        "()Ljava/lang/Thread;",
                        &[],
                    )
                    .unwrap()
                    .l()
                    .unwrap();
                env.call_method(
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
    RUNTIME.set(runtime).map_err(|_| Error::Runtime)?;
    Ok(())
}

fn setup_class_loader(env: &JNIEnv) -> Result<(), Error> {
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

    CLASS_LOADER
        .set(env.new_global_ref(class_loader)?)
        .map_err(|_| Error::ClassLoader)
}

#[no_mangle]
pub extern "C" fn JNI_OnLoad(vm: jni::JavaVM, _res: *const std::os::raw::c_void) -> jni::sys::jint {
    let env = vm.get_env().unwrap();
    jni_utils::init(&env).unwrap();
    btleplug::platform::init(&env).unwrap();
    let _ = JAVAVM.set(vm);
    jni::JNIVersion::V6.into()
}
