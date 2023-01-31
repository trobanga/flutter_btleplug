
import 'flutter_btleplug_platform_interface.dart';

class FlutterBtleplug {
  Future<String?> getPlatformVersion() {
    return FlutterBtleplugPlatform.instance.getPlatformVersion();
  }
}
