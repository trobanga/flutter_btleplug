import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_btleplug_platform_interface.dart';

/// An implementation of [FlutterBtleplugPlatform] that uses method channels.
class MethodChannelFlutterBtleplug extends FlutterBtleplugPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_btleplug');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
