//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <i_am_rich/i_am_rich_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) i_am_rich_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "IAmRichPlugin");
  i_am_rich_plugin_register_with_registrar(i_am_rich_registrar);
}
