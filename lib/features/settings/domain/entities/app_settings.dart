import 'package:equatable/equatable.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme_modes.dart';

/// Application settings entity
class AppSettings extends Equatable {
  /* ---------------------------------- Data ---------------------------------- */
  final AppThemeMode mode;

  final String languageCode;

  /* ------------------------------- Constructor ------------------------------ */

  const AppSettings({required this.mode, required this.languageCode});

  /// [AppSettings] factory constructor with default values

  factory AppSettings.initial() =>
      const AppSettings(mode: AppThemeMode.system, languageCode: 'en');

  @override
  List<Object?> get props => <Object?>[mode];
}
