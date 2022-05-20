import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'btleplugtest_platform_interface.dart';

/// An implementation of [BtleplugtestPlatform] that uses method channels.
class MethodChannelBtleplugtest extends BtleplugtestPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('btleplugtest');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
