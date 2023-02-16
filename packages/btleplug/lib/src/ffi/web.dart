import 'package:btleplug/src/bridge_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

typedef ExternalLibrary = WasmModule;

Btleplug createWrapperImpl(ExternalLibrary module) => BtleplugImpl.wasm(module);
