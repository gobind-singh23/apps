import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'i_am_rich_method_channel.dart';

abstract class IAmRichPlatform extends PlatformInterface {
  /// Constructs a IAmRichPlatform.
  IAmRichPlatform() : super(token: _token);

  static final Object _token = Object();

  static IAmRichPlatform _instance = MethodChannelIAmRich();

  /// The default instance of [IAmRichPlatform] to use.
  ///
  /// Defaults to [MethodChannelIAmRich].
  static IAmRichPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [IAmRichPlatform] when
  /// they register themselves.
  static set instance(IAmRichPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
