import 'package:flutter_test/flutter_test.dart';
import 'package:i_am_rich/i_am_rich.dart';
import 'package:i_am_rich/i_am_rich_platform_interface.dart';
import 'package:i_am_rich/i_am_rich_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockIAmRichPlatform
    with MockPlatformInterfaceMixin
    implements IAmRichPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final IAmRichPlatform initialPlatform = IAmRichPlatform.instance;

  test('$MethodChannelIAmRich is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelIAmRich>());
  });

  test('getPlatformVersion', () async {
    IAmRich iAmRichPlugin = IAmRich();
    MockIAmRichPlatform fakePlatform = MockIAmRichPlatform();
    IAmRichPlatform.instance = fakePlatform;

    expect(await iAmRichPlugin.getPlatformVersion(), '42');
  });
}
