import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'btleplugtest_method_channel.dart';

abstract class BtleplugtestPlatform extends PlatformInterface {
  /// Constructs a BtleplugtestPlatform.
  BtleplugtestPlatform() : super(token: _token);

  static final Object _token = Object();

  static BtleplugtestPlatform _instance = MethodChannelBtleplugtest();

  /// The default instance of [BtleplugtestPlatform] to use.
  ///
  /// Defaults to [MethodChannelBtleplugtest].
  static BtleplugtestPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BtleplugtestPlatform] when
  /// they register themselves.
  static set instance(BtleplugtestPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
