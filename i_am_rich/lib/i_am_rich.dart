
import 'i_am_rich_platform_interface.dart';

class IAmRich {
  Future<String?> getPlatformVersion() {
    return IAmRichPlatform.instance.getPlatformVersion();
  }
}
