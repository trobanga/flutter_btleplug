import 'package:flutter/material.dart';
import 'package:flutter_btleplug/src/rust/api/ble.dart';
import 'package:flutter_btleplug/src/rust/api/logger.dart';
import 'package:flutter_btleplug/src/rust/frb_generated.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:logger/logger.dart';

final log = Logger(level: Level.debug);

final streamProvider = StreamProvider.autoDispose<String>((ref) async* {
  await for (final s in enableLogging()) {
    log.i(s);
  }
});

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

class Log extends ConsumerWidget {
  const Log({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<String> message = ref.watch(streamProvider);

    return message.when(
      loading: () => const CircularProgressIndicator(),
      error: (err, stack) => Text('Error: $err'),
      data: (message) {
        return Text(message);
      },
    );
  }
}

void main() async {
  await RustLib.init();
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
            const Log(),
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
