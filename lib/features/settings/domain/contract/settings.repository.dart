import 'package:flutter_boilerplate/core/failure.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme/app_theme.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme/modes.dart';
import 'package:fpdart/fpdart.dart';

/// Application settings repository
///
/// Contains methods to retrieve information of
/// different application settings like
/// - Theme light mode
/// - Language
///
abstract interface class SettingsRepository {
  /// Restores previously configured application user
  /// settings on current device
  TaskEither<Failure, AppSettings> readSettings();

  /// Stores application theme light mode setting
  TaskEither<Failure, Unit> saveSettings(AppSettings settings);

  /// Saves application theme settings
  TaskEither<Failure, Unit> saveTheme(AppThemeMode mode);

  /// Saves given language
  TaskEither<Failure, Unit> saveLanguageSettings(String languageCode);
}
