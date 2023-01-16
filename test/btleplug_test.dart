import 'package:flutter_test/flutter_test.dart';
import 'package:btleplug/btleplug.dart';
import 'package:btleplug/btleplug_platform_interface.dart';
import 'package:btleplug/btleplug_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBtleplugPlatform 
    with MockPlatformInterfaceMixin
    implements BtleplugPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BtleplugPlatform initialPlatform = BtleplugPlatform.instance;

  test('$MethodChannelBtleplug is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBtleplug>());
  });

  test('getPlatformVersion', () async {
    Btleplug btleplugPlugin = Btleplug();
    MockBtleplugPlatform fakePlatform = MockBtleplugPlatform();
    BtleplugPlatform.instance = fakePlatform;
  
    expect(await btleplugPlugin.getPlatformVersion(), '42');
  });
}
