import 'dart:async';

import 'package:elementary/elementary.dart';
import 'package:flutter_boilerplate/core/failure.dart';
import 'package:flutter_boilerplate/features/settings/domain/contract/settings.repository.dart';
import 'package:flutter_boilerplate/features/settings/domain/usecases/store_mode_usecase.dart';
import 'package:flutter_boilerplate/features/settings/presentation/logic/cubit/settings_cubit.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme/modes.dart';
import 'package:fpdart/fpdart.dart';

/// {@category Presentation}
class ThemeSettingsModel extends ElementaryModel {
/* ------------------------------ Dependencies ------------------------------ */
  /// External model state
  final SettingsCubit _settingsCubit;
/* -------------------------------- Use cases ------------------------------- */
  /// External business logic to move current [AppThemeMode]
  /// into persistent state storage
  final StoreThemeModeUseCase _storeThemeMode;

/* ------------------------------- Constructor ------------------------------ */
  ThemeSettingsModel(
    this._settingsCubit,
    SettingsRepository repository,
  ) : _storeThemeMode = StoreThemeModeUseCase(repository);

  /// Returns currently configured [AppThemeMode]
  AppThemeMode get mode => _settingsCubit.state.mode;

/* -------------------------------------------------------------------------- */
  /// Returns app theme mode changes stream
  Stream<AppThemeMode> get mode$ => _settingsCubit.stream.transform(
        StreamTransformer<SettingsState, AppThemeMode>.fromHandlers(
          handleData: (SettingsState value, EventSink<AppThemeMode> sink) {
            sink.add(value.mode);
          },
        ),
      ).asBroadcastStream();
/* -------------------------------------------------------------------------- */
  /// Changes application color theme mode without affecting
  /// previously configured settings (e.g. do not stores this theme permanently)
  set theme(AppThemeMode appThemeMode) {
    _settingsCubit.changeThemeMode(appThemeMode);
  }

/* -------------------------------------------------------------------------- */
  /// Changes device scoped theme settings by
  /// storing that into local storage
  TaskEither<Failure, Unit> changeTheme(AppThemeMode mode) {
    // Store theme
    return _storeThemeMode(mode).flatMap(
      (AppThemeMode r) => TaskEither<Failure, Unit>(
        () async {
          theme = r;
          return const Right<Failure, Unit>(unit);
        },
      ),
    );
  }
}
