import 'package:flutter_boilerplate/env/base_config.dart';
import 'package:flutter_boilerplate/env/local_config.dart';

class Environment {
  Environment();

  static const String local = 'LOCAL';

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
      default:
        which = Environment.local;
        return LocalConfig(isBackground);
    }
  }
}
