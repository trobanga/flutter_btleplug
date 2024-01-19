// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.20.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

Future<void> addLogger(
        {required String name, required LogLevel level, dynamic hint}) =>
    RustLib.instance.api.addLogger(name: name, level: level, hint: hint);

/// This function creates the tracing_subscriber::Registry and must be called at most once.
Stream<String> enableLogging({dynamic hint}) =>
    RustLib.instance.api.enableLogging(hint: hint);

enum LogLevel {
  debug,
  info,
}
