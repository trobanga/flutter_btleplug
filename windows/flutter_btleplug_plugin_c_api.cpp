#include "include/flutter_btleplug/flutter_btleplug_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_btleplug_plugin.h"

void FlutterBtleplugPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_btleplug::FlutterBtleplugPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
