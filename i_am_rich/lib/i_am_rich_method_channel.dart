import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'i_am_rich_platform_interface.dart';

/// An implementation of [IAmRichPlatform] that uses method channels.
class MethodChannelIAmRich extends IAmRichPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('i_am_rich');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
