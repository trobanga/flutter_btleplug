export 'ffi.dart';

import 'btleplugtest_platform_interface.dart';

class Btleplugtest {
  Future<String?> getPlatformVersion() {
    return BtleplugtestPlatform.instance.getPlatformVersion();
  }
}
