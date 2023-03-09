import 'package:flutter_test/flutter_test.dart';
import 'package:fiscaling/fiscaling.dart';
import 'package:fiscaling/fiscaling_platform_interface.dart';
import 'package:fiscaling/fiscaling_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFiscalingPlatform
    with MockPlatformInterfaceMixin
    implements FiscalingPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FiscalingPlatform initialPlatform = FiscalingPlatform.instance;

  test('$MethodChannelFiscaling is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFiscaling>());
  });

  test('getPlatformVersion', () async {
    Fiscaling fiscalingPlugin = Fiscaling();
    MockFiscalingPlatform fakePlatform = MockFiscalingPlatform();
    FiscalingPlatform.instance = fakePlatform;

    expect(await fiscalingPlugin.getPlatformVersion(), '42');
  });
}
