import 'package:equatable/equatable.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme/modes.dart';

/// Application settings entity
class AppSettings extends Equatable {
/* ---------------------------------- Data ---------------------------------- */
  /// Application colors theme mode
  final AppThemeMode mode;
/* -------------------------------------------------------------------------- */
  final String languageCode;
/* ------------------------------- Constructor ------------------------------ */
  const AppSettings({required this.mode, required this.languageCode});

  /// [AppSettings] factory constructor with default values
  factory AppSettings.initial() => const AppSettings(
        mode: AppThemeMode.system,
        languageCode: 'en',
      );
/* -------------------------------- Equatable ------------------------------- */
  @override
  List<Object?> get props => <Object?>[mode];
}
