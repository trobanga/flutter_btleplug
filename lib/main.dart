import 'package:flutter/material.dart';
import 'package:flutter_btleplug/src/rust/api/ble.dart';
import 'package:flutter_btleplug/src/rust/api/ble/device.dart';
import 'package:flutter_btleplug/src/rust/api/logger.dart';
import 'package:flutter_btleplug/src/rust/frb_generated.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:logger/logger.dart';

final log = Logger(level: Level.debug);

class ScanNotifier extends StateNotifier<List<BleDevice>> {
  ScanNotifier() : super([]);

  void start() {
    final scannedDevices = scan(filter: []);
    scannedDevices.listen((s) {
      state = s;
    });
  }
}

final scanProvider = StateNotifierProvider<ScanNotifier, List<BleDevice>>(
    (ref) => ScanNotifier());

void main() async {
  await RustLib.init();
  enableLogging().listen((msg) => log.i(msg));
  init();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scans = ref.watch(scanProvider);
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Plugin example app'),
          ),
          body: Column(children: [
            ElevatedButton(
                onPressed: () {
                  log.i('scanning...');
                  ref.read(scanProvider.notifier).start();
                },
                child: const Text('scan')),
            ListView(
              shrinkWrap: true,
              children: [
                for (final s in scans)
                  ElevatedButton(
                      onPressed: () {
                        log.i('connect to ${s.id}');
                        connect(id: s.id);
                      },
                      child: Text(s.name))
              ],
            ),
          ])),
    );
  }
}
