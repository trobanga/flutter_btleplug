import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:async';

import 'package:logger/logger.dart';
import 'package:flutter/services.dart';
import 'package:btleplug/btleplug.dart';

final streamProvider = StreamProvider.autoDispose<String>((ref) async* {
  String str = "";
  final init = api.init();
  await for (final s in init) {
    str += s;
    str += '\n';
    yield str;
  }
});

class ScanNotifier extends StateNotifier<List<String>> {
  ScanNotifier() : super([]);

  void add(String s) {
    state = [...state, s];
  }

  void start() {
    final scan = api.bleScan(filter: []);
    scan.listen((s) => add(s));
  }
}

final scanProvider =
    StateNotifierProvider<ScanNotifier, List<String>>((ref) => ScanNotifier());

class Log extends ConsumerWidget {
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
  final logger = Logger();

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  final _btleplugPlugin = Btleplug();

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
                  ref.read(scanProvider.notifier).start();
                },
                child: const Text('scan')),
            Log(),
            ListView(
              shrinkWrap: true,
              children: [for (final s in scans) Text(s)],
            ),
          ])),
    );
  }
}
