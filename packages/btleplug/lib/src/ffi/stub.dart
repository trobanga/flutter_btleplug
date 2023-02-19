import 'package:btleplug/src/bridge_generated.dart';

/// Represents the external library for btleplug
///
/// Will be a DynamicLibrary for dart:io or WasmModule for dart:html
typedef ExternalLibrary = Object;

Btleplug createWrapperImpl(ExternalLibrary lib) => throw UnimplementedError();
