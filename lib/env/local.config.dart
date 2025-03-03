import 'package:flutter_boilerplate/env/base_config.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fpdart/fpdart.dart';

class LocalConfig extends BaseConfig {
  LocalConfig(
    super.detached,
  );

  @override
  Option<String> get gatewayHost => Option<String>.of(
        dotenv.get(
          'RT_GATEWAY_URL',
          fallback: '',
        ),
      );

  @override
  Option<String> get apiHost => throw UnimplementedError();
}
