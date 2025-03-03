import 'package:flutter_boilerplate/env/base_config.dart';
import 'package:flutter_boilerplate/env/develop.config.dart';
import 'package:flutter_boilerplate/env/local.config.dart';
import 'package:flutter_boilerplate/env/stagin_confing.dart';

class Environment {
  Environment();

  static const String local = 'LOCAL';
  static const String strange = 'STRANGE';
  static const String dev = 'DEVELOPMENT';
  static const String staging = 'STAGING';
  static const String prod = 'PRODUCTION';
  static const String test = 'TEST';

  late BaseConfig config;
  late String which;

  void initConfig(String environment, [bool isBackground = false]) {
    config = _getConfig(environment, isBackground);
  }

  static const bool _isstaging = bool.fromEnvironment('STAGING');

  bool get isstaging => _isstaging;

  void setConfig(BaseConfig cfg) {
    config = cfg;
  }

  BaseConfig _getConfig(String environment, [bool isBackground = false]) {
    switch (environment) {
      case Environment.local:
        which = Environment.local;
        return LocalConfig(isBackground);
      case Environment.dev:
        which = Environment.dev;
        return DevelopConfig(isBackground);
      default:
        which = Environment.staging;
        return StagingConfig(isBackground);
    }
  }
}
