package com.example.flutter_btleplug

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    init {
        System.loadLibrary("rust_lib")
    }
}
