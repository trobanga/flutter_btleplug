import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'btleplug_platform_interface.dart';

/// An implementation of [BtleplugPlatform] that uses method channels.
class MethodChannelBtleplug extends BtleplugPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('btleplug');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
