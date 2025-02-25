import 'package:fpdart/fpdart.dart';

abstract class BaseConfig {
  final bool detached;

  BaseConfig(this.detached);

  Option<String> get gatewayHost;

  Option<String> get apiHost;

  bool get useSecure => false;

  bool get reportErrors => false;

  int? get connectionTimeout => 4000;

  int? get receiveTimeout => 7 * 1000;

  int? get sendTimeout => 4000;
}
