import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_btleplug_method_channel.dart';

abstract class FlutterBtleplugPlatform extends PlatformInterface {
  /// Constructs a FlutterBtleplugPlatform.
  FlutterBtleplugPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterBtleplugPlatform _instance = MethodChannelFlutterBtleplug();

  /// The default instance of [FlutterBtleplugPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterBtleplug].
  static FlutterBtleplugPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterBtleplugPlatform] when
  /// they register themselves.
  static set instance(FlutterBtleplugPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
