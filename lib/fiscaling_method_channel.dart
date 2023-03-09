import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'fiscaling_platform_interface.dart';

/// An implementation of [FiscalingPlatform] that uses method channels.
class MethodChannelFiscaling extends FiscalingPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('fiscaling');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
