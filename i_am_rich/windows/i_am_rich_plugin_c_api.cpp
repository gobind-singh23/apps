#include "include/i_am_rich/i_am_rich_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "i_am_rich_plugin.h"

void IAmRichPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  i_am_rich::IAmRichPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
