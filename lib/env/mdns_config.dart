import 'package:flutter_boilerplate/env/base_config.dart';
import 'package:fpdart/fpdart.dart';

class MdnsConfig extends BaseConfig {
  final Map<dynamic, dynamic> _internalConfig;

  MdnsConfig(this._internalConfig, super.detached);

  String get _host =>
      _internalConfig.lookup('realtimeApi').getOrElse(Exception.new);

  @override
  Option<String> get gatewayHost =>
      Option<String>.of(<String>['ws:/', _host, 'stream'].join('/'));

  @override
  Option<String> get apiHost => Option<String>.of(
        _internalConfig.lookup('restApi').getOrElse(Exception.new),
      );
}
