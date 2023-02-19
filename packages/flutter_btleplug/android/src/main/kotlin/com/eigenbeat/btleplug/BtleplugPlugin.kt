package com.eigenbeat.btleplug

import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin

/** BtleplugtestPlugin */
class BtleplugPlugin: FlutterPlugin {
  init {
      System.loadLibrary("btleplug");
  }


  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
  }
}
