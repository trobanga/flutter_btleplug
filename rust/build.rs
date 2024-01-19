use lib_flutter_rust_bridge_codegen::codegen::{Config, MetaConfig};
use std::{env, io};

const RUST_INPUT: &str = "src/api/**/*.rs";
const DART_OUTPUT: &str = "../lib/src/rust";

const IOS_C_OUTPUT: &str = "../ios/Classes/frb.h";
const MACOS_C_OUTPUT: &str = "../macos/Classes";

fn main() {
    // Tell Cargo that if the input Rust code changes, rerun this build script
    println!("cargo:rerun-if-changed=src/api/**/*.rs");
    println!("cargo:rerun-if-changed=src/api.rs");

    let target_os = std::env::var("CARGO_CFG_TARGET_OS").unwrap();
    let (c_output, duplicated_c_output) = if target_os == "macos" || target_os == "ios" {
        (
            Some(IOS_C_OUTPUT.to_string()),
            Some(vec![MACOS_C_OUTPUT.to_string()]),
        )
    } else {
        (None, None)
    };

    // Config for frb_codegen
    let config = Config {
        base_dir: None,
        rust_input: RUST_INPUT.to_string(),
        dart_output: DART_OUTPUT.to_string(),
        c_output,
        duplicated_c_output,
        rust_root: None,
        rust_output: None,
        dart_entrypoint_class_name: None,
        dart_format_line_length: None,
        dart_enums_style: None,
        add_mod_to_lib: None,
        llvm_path: None,
        llvm_compiler_opts: None,
        dart_root: None,
        build_runner: None,
        extra_headers: None,
        web: None,
        deps_check: None,
        full_dep: None,
        dart3: Some(true),
        default_external_library_loader_web_prefix: None,
        dump: None,
        dump_all: None,
    };

    // Generate frb
    let meta_config = MetaConfig { watch: false };
    lib_flutter_rust_bridge_codegen::codegen::generate(config, meta_config).unwrap();
}
