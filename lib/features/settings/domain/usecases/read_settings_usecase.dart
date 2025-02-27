import 'package:flutter_boilerplate/core/failure.dart';
import 'package:flutter_boilerplate/core/usecase.dart';
import 'package:flutter_boilerplate/features/settings/domain/contracts/settings_repository.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/app_settings.dart';
import 'package:fpdart/fpdart.dart';

///
/// Extracts settings from given [SettingsRepository]
///
/// Will return [AppSettings] or failure if settings
/// are not available
///
class ReadSettingsUseCase extends UseCase<AppSettings, Unit> {
  /// Repository containing [AppSettings]
  final SettingsRepository _repository;

  ReadSettingsUseCase(this._repository);

  @override
  TaskEither<Failure, AppSettings> call([Unit params = unit]) {
    return _repository.readSettings();
  }
}
