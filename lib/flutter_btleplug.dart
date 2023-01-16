export 'ffi.dart';

import 'flutter_btleplug_platform_interface.dart';

class Btleplug {
  Future<String?> getPlatformVersion() {
    return BtleplugPlatform.instance.getPlatformVersion();
  }
}
