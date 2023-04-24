import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:logger/logger.dart';
import 'package:flutter_btleplug/flutter_btleplug.dart';

final log = Logger();

final streamProvider = StreamProvider.autoDispose<String>((ref) async* {
  await for (final s in btl.createLogStream()) {
    log.i(s.msg);
  }
});

class ScanNotifier extends StateNotifier<List<BleDevice>> {
  ScanNotifier() : super([]);

  void start() {
    final scan = btl.scan(filter: []);
    scan.listen((s) {
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
  btl.init();
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
                onPressed: () async {
                  log.i('scanning...');
                  await Permission.bluetoothScan.request();
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
                        btl.connect(id: s.id);
                      },
                      child: Text(s.name))
              ],
            ),
          ])),
    );
  }
}
