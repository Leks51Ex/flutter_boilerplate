import 'package:equatable/equatable.dart';
/* -------------------------------------------------------------------------- */
/*                             Language data model                            */
/* -------------------------------------------------------------------------- */

class Language extends Equatable {
/* ------------------------------- Attributes ------------------------------- */
  /// the country code (IT,AF..)
  final String code;
/* -------------------------------------------------------------------------- */
  /// the locale (en, es, da)
  final String locale;
/* -------------------------------------------------------------------------- */
  /// the full name of language (English, Danish..)
  final String language;
/* -------------------------------------------------------------------------- */
  /// Name of language on target language
  final String nativeLanguage;
/* -------------------------------------------------------------------------- */
  const Language({
    required this.code,
    required this.locale,
    required this.language,
    required this.nativeLanguage,
  });
/* -------------------------------------------------------------------------- */
  @override
  List<Object?> get props => <Object?>[code, locale, language];
}
