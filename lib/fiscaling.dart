
import 'package:flutter/services.dart';

import 'fiscaling_platform_interface.dart';

class Fiscaling {
  static const MethodChannel _channel =
  MethodChannel('fiscaling');

  static Future<String> get platformVersion async {
    final String version =
    await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
