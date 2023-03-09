import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'fiscaling_method_channel.dart';

abstract class FiscalingPlatform extends PlatformInterface {
  /// Constructs a FiscalingPlatform.
  FiscalingPlatform() : super(token: _token);

  static final Object _token = Object();

  static FiscalingPlatform _instance = MethodChannelFiscaling();

  /// The default instance of [FiscalingPlatform] to use.
  ///
  /// Defaults to [MethodChannelFiscaling].
  static FiscalingPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FiscalingPlatform] when
  /// they register themselves.
  static set instance(FiscalingPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
