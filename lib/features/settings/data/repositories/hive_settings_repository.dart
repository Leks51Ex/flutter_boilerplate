import 'package:flutter_boilerplate/common/hive_boxes.names.dart';
import 'package:flutter_boilerplate/core/failure.dart';
import 'package:flutter_boilerplate/core/failures/storage.failure.dart';
import 'package:flutter_boilerplate/features/settings/data/dtos/app_settings.dto.dart';
import 'package:flutter_boilerplate/features/settings/data/dtos/app_theme.dto.dart';
import 'package:flutter_boilerplate/features/settings/domain/contract/settings.repository.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme/app_theme.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme/modes.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hive/hive.dart';

/// {@category Repositories}
/// {@subCategory Information displays}
class HiveSettingsRepository implements SettingsRepository {
/* ------------------------------ dependencies ------------------------------ */

  final HiveInterface _storage;

/* ------------------------------- Constructor ------------------------------ */

  HiveSettingsRepository(this._storage);

/* --------------------------------- Utility -------------------------------- */
  StorageFailure createFailure([dynamic message]) {
    return StorageFailure('$runtimeType', message);
  }

/* ----------------------------- implementation ----------------------------- */

  void registerAdapters() {
    Hive.registerAdapter(AppSettingsDtoAdapter());
    Hive.registerAdapter(AppThemeDtoAdapter());
  }

/* -------------------------------------------------------------------------- */
  /// Extracts current value stored in [Hive]
  /// If there is no such value then [AppSettingsDto.initial()]
  /// will be returned
  TaskEither<Failure, AppSettingsDto> extractDto() {
    return TaskEither<Failure, Option<AppSettingsDto>>.tryCatch(
      () async {
        // Open hive box
        Box<AppSettingsDto> box =
            await _storage.openBox<AppSettingsDto>(BoxesNames.settingsBox);

        // Extract settings dto or null if it have not been
        // written yet
        final AppSettingsDto? dto = box.get('settings');
        // Close opened box
        await box.close();
        return Option<AppSettingsDto>.fromNullable(dto);
      },
      // Catch failure and map to another exception
      (
        Object error,
        StackTrace stackTrace,
      ) =>
          createFailure('Failed to extract previously stored settings'),
    )
        // Extract read settings or make intial if
        // it is null
        .flatMap(
      (Option<AppSettingsDto> r) => TaskEither<Failure, AppSettingsDto>.of(
        r.getOrElse(
          AppSettingsDto.initial,
        ),
      ),
    );
  }

/* -------------------------------------------------------------------------- */
  /// Stores [AppSettingsDto] in local [Hive] storage
  /// Returns [Unit] if process terminates successfully
  /// and [StorageFailure] otherwise
  TaskEither<Failure, Unit> storeDto(AppSettingsDto dto) {
    return TaskEither<Failure, Unit>.tryCatch(
      () async {
        final Box<AppSettingsDto> box =
            await _storage.openBox<AppSettingsDto>(BoxesNames.settingsBox);

        await box.put('settings', dto);

        await box.close();

        return unit;
      },
      (Object error, StackTrace stackTrace) => createFailure(error),
    );
  }

/* -------------------------------------------------------------------------- */
  /// Reads current [AppSettings] from local [Hive] storage
  ///
  /// Returns [StorageFailure] if process could not complete
  /// this operation successfully
  @override
  TaskEither<Failure, AppSettings> readSettings() {
    return extractDto()
        // Map to entity
        .flatMap(
      (AppSettingsDto dto) => TaskEither<Failure, AppSettings>(
        () async {
          return Right<Failure, AppSettings>(
            AppSettings(
              mode: toRealMode(dto.mode),
              languageCode: dto.code,
            ),
          );
        },
      ),
    );
  }

/* -------------------------------------------------------------------------- */
  /// Stores new [AppSettings] value in [Hive] local storage
  ///
  /// Will return [StorageFailure] if process could not complete
  /// this operation successfully
  @override
  TaskEither<Failure, Unit> saveSettings(AppSettings settings) {
    /// Create dto from entity
    return TaskEither<Failure, AppSettingsDto>.of(
      AppSettingsDto.fromEntity(settings),

      /// Store new value
    ).flatMap(storeDto);
  }

/* -------------------------------------------------------------------------- */
  /// Applies new [AppThemeMode] passed as argument to this method
  /// to current stored [AppSettings] representation inside [Hive]
  /// local storage.
  ///
  /// Will return [StorageFailure] if this process could not
  /// complete successfully
  @override
  TaskEither<Failure, Unit> saveTheme(AppThemeMode mode) {
    /// Extract current value of settings
    return extractDto()
        // Patch currently stored value with new
        // theme mode
        .flatMap(
          (AppSettingsDto r) => TaskEither<Failure, AppSettingsDto>.of(
            r.copyWith(
              themeMode: fromRealMode(mode),
            ),
          ),
        )
        // Store new value
        .flatMap(storeDto);
  }

  @override
  TaskEither<Failure, Unit> saveLanguageSettings(String languageCode) {
    return extractDto()
        .flatMap(
          (AppSettingsDto r) => TaskEither<Failure, AppSettingsDto>.of(
            r.copyWith(code: languageCode),
          ),
        )
        .flatMap(storeDto);
  }
}
