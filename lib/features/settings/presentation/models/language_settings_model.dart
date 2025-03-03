import 'dart:async';

import 'package:elementary/elementary.dart';
import 'package:flutter_boilerplate/core/failure.dart';
import 'package:flutter_boilerplate/features/settings/domain/contracts/settings_repository.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/language/language.dart';
import 'package:flutter_boilerplate/features/settings/domain/usecases/store_language_usecase.dart';
import 'package:flutter_boilerplate/features/settings/presentation/logic/cubit/settings_cubit.dart';
import 'package:fpdart/fpdart.dart';

/// {@category Presentation}
class LanguageSettingsModel extends ElementaryModel {
  ///External model state
  final SettingsCubit _settingsCubit;

  /* -------------------------------- Use cases ------------------------------- */
  /// External business logic to move current [Language]
  /// into persistent state storage
  final StoreLanguageUseCase _storeLanguage;
  /* ------------------------------- Constructor ------------------------------ */

  LanguageSettingsModel(this._settingsCubit, SettingsRepository repository)
      : _storeLanguage = StoreLanguageUseCase(repository);

  ///Returns currently configured [Language]
  Language get language => _settingsCubit.state.language;

  List<Language> get supportedLanguages =>
      _settingsCubit.state.supportedLanguages;

/* ------------------------------------------------------------------------- */

  ///Returns language mode changes stream
  Stream<Language> get languageCode$ => _settingsCubit.stream.transform(
        StreamTransformer<SettingsState, Language>.fromHandlers(
          handleData: (SettingsState value, EventSink<Language> sink) {
            sink.add(value.language);
          },
        ),
      ).asBroadcastStream();

/* -------------------------------------------------------------------------- */

  ///Chages application language without affecting
  ///Previously configured settings (e.g do not stores this language permanently)
  set language(Language languageCode) {
    _settingsCubit.changeLang(languageCode);
  }

/* ------------------------------------------------------------------------- */
  ///Changes device scoped lenguage settings by
  ///storing that into local storage
  TaskEither<Failure, Unit> changeLanguage(Language lang) {
    return _storeLanguage(lang).flatMap(
      (_) => TaskEither<Failure, Unit>(() async {
        return const Right<Failure, Unit>(unit);
      }),
    );
  }
}
