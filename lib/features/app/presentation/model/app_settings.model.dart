import 'dart:async';

import 'package:elementary/elementary.dart';
import 'package:flutter_boilerplate/core/failure.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/language/language.dart';
import 'package:flutter_boilerplate/features/settings/domain/contract/settings.repository.dart';
import 'package:flutter_boilerplate/features/settings/domain/usecases/read_settings_usecase.dart';
import 'package:flutter_boilerplate/features/settings/presentation/logic/cubit/settings_cubit.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme/app_theme.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme/modes.dart';

import 'package:fpdart/fpdart.dart';

/// {@category Presentation}
class AppSettingsModel extends ElementaryModel {
  /* ------------------------------ Dependencies ------------------------------ */
  /// External model state
  final SettingsCubit _settingsCubit;
/* -------------------------------- Use cases ------------------------------- */
  /// External business logic to restore [AppThemeMode]
  /// from persistent storage
  final ReadSettingsUseCase _readSettingsUseCase;
/* ------------------------------- Constructor ------------------------------ */
  AppSettingsModel(
    this._settingsCubit,
    SettingsRepository repository,
  ) : _readSettingsUseCase = ReadSettingsUseCase(repository);
/* --------------------------------- Geters --------------------------------- */
  /// Returns currently configured [AppThemeMode]
  AppThemeMode get mode => _settingsCubit.state.mode;
/* -------------------------------------------------------------------------- */
  Language get language => _settingsCubit.state.language;
/* -------------------------------------------------------------------------- */
  /// Flag which marks that theme have been manualy configured by user
  bool get isManualConfigured => _settingsCubit.state.manualTheme;
/* --------------------------------- Methods -------------------------------- */
  /// Returns app theme mode changes stream
  Stream<AppThemeMode> get mode$ => _settingsCubit.stream.transform(
        StreamTransformer<SettingsState, AppThemeMode>.fromHandlers(
          handleData: (SettingsState value, EventSink<AppThemeMode> sink) {
            sink.add(value.mode);
          },
        ),
      ).asBroadcastStream();
/* -------------------------------------------------------------------------- */
  Stream<Language> get language$ => _settingsCubit.stream.transform(
        StreamTransformer<SettingsState, Language>.fromHandlers(
          handleData: (SettingsState state, EventSink<Language> sink) {
            sink.add(state.language);
          },
        ),
      ).asBroadcastStream();

/* -------------------------------------------------------------------------- */
  TaskEither<Failure, Unit> restoreSettings() {
    return _readSettingsUseCase()
        .orElse(
          (Failure l) =>
              TaskEither<Failure, AppSettings>.of(AppSettings.initial()),
        )
        .flatMap(
          (AppSettings settings) => TaskEither<Failure, Unit>(
            () async {
              // Change theme to match persistent state

              _settingsCubit.changeThemeMode(settings.mode, false);

              /// Map to [Unit]
              return const Right<Failure, Unit>(unit);
            },
          ),
        );
  }
}
