import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'btleplug_method_channel.dart';

abstract class BtleplugPlatform extends PlatformInterface {
  /// Constructs a BtleplugPlatform.
  BtleplugPlatform() : super(token: _token);

  static final Object _token = Object();

  static BtleplugPlatform _instance = MethodChannelBtleplug();

  /// The default instance of [BtleplugPlatform] to use.
  ///
  /// Defaults to [MethodChannelBtleplug].
  static BtleplugPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BtleplugPlatform] when
  /// they register themselves.
  static set instance(BtleplugPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
