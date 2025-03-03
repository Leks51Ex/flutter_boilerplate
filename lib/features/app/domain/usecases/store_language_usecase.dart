import 'package:flutter_boilerplate/core/failure.dart';
import 'package:flutter_boilerplate/core/usecase.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/language/language.dart';
import 'package:flutter_boilerplate/features/settings/domain/contract/settings.repository.dart';
import 'package:fpdart/fpdart.dart';

///
/// Store language settings from given [SettingsRepository]
///
/// Will return [Language] or failure if settings
/// are not available
///

class StoreLanguageUseCase extends UseCase<String, Language> {
  final SettingsRepository _repository;

  /// Repository containing [Language]
  StoreLanguageUseCase(this._repository);

  @override
  TaskEither<Failure, String> call(Language params) {
    final String languageCode = params.code;
    return _repository.saveLanguageSettings(languageCode).flatMap(
          (Unit r) => TaskEither<Failure, String>.of(languageCode),
        );
  }
}
