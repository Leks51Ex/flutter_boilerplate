part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const SettingsState._();

  const factory SettingsState({
    required AppThemeMode mode,
    required Language language,
    required List<Language> supportedLanguages,
    @Default(false) bool manualTheme,
  }) = _SettingsInitial;
}
