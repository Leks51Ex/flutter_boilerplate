import 'package:flutter_boilerplate/core/failure.dart';
import 'package:flutter_boilerplate/core/usecase.dart';
import 'package:flutter_boilerplate/features/settings/domain/contracts/settings_repository.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme_modes.dart';
import 'package:fpdart/fpdart.dart';

///
/// Store settings from given [SettingsRepository]
///
/// Will return [AppThemeMode] of failure if settings
/// are not available
///

class StoreThemeModeUseCase extends UseCase<AppThemeMode, AppThemeMode> {
  /// Repository containing [AppThemeMode]
  final SettingsRepository _repository;

  StoreThemeModeUseCase(this._repository);

  @override
  TaskEither<Failure, AppThemeMode> call(AppThemeMode params) {
    return _repository.saveThemeSettings(params).map((Unit r) => params);
  }
}
