import 'package:flutter_boilerplate/env/base_config.dart';
import 'package:fpdart/fpdart.dart';

class StagingConfig extends BaseConfig {
  StagingConfig(super.detached);

  @override
  Option<String> get apiHost => throw UnimplementedError();

  static const String _rtGatewayUrl = String.fromEnvironment('GATEWAY_URL');

  @override
  Option<String> get gatewayHost =>
      Option<String>.of(<String>['ws:/', _rtGatewayUrl, 'stream'].join('/'));
}
