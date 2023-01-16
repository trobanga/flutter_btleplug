export 'ffi.dart';

import 'btleplug_platform_interface.dart';

class Btleplug {
  Future<String?> getPlatformVersion() {
    return BtleplugPlatform.instance.getPlatformVersion();
  }
}
