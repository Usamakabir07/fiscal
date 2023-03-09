import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fiscaling/fiscaling_method_channel.dart';

void main() {
  MethodChannelFiscaling platform = MethodChannelFiscaling();
  const MethodChannel channel = MethodChannel('fiscaling');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
