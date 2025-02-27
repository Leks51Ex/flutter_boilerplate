import 'package:flutter_boilerplate/core/failure.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/app_settings.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme_modes.dart';
import 'package:fpdart/fpdart.dart';

/// Application settings repository
///
/// Contains methods to retrieve information of
/// different application settings like
/// - Theme light mode
/// - Language
///
///

abstract interface class SettingsRepository {
  /// settings on current device
  TaskEither<Failure, AppSettings> readSettings();

  /// Stores application theme light mode setting
  TaskEither<Failure, Unit> saveSettings(AppSettings settings);

  /// Saves application theme settings
  TaskEither<Failure, Unit> saveThemeSettings(AppThemeMode mode);

  /// Saves given language
  TaskEither<Failure, Unit> saveLanguageSettings(String languageCode);
}
