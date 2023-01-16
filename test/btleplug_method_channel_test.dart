import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:btleplug/btleplug_method_channel.dart';

void main() {
  MethodChannelBtleplug platform = MethodChannelBtleplug();
  const MethodChannel channel = MethodChannel('btleplug');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
