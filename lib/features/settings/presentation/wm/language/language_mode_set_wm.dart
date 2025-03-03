import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/app_colors.dart';
import 'package:flutter_boilerplate/di/di.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/language/language.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme/theme_manager.dart';
import 'package:flutter_boilerplate/features/settings/presentation/models/language_settings_model.dart';
import 'package:flutter_boilerplate/ui/components/radio_button/radio_button.dart';
import 'package:flutter_boilerplate/ui/components/radio_button/radio_button_iwm.dart';
import 'package:provider/provider.dart';

LanguageModeSetWM Function(BuildContext context) languageModeSetWMFactory({
  required String controlledLanguage,
}) =>
    (BuildContext context) {
      final ThemeManager themeNotifier = Provider.of<ThemeManager>(context);
      final ThemeWrapper themeWrapper = ThemeWrapper();
      final LanguageSettingsModel model = LanguageSettingsModel(sl(), sl());

      return LanguageModeSetWM(
        themeNotifier,
        themeWrapper,
        model,
        languageCode: controlledLanguage,
      );
    };

class LanguageModeSetWM
    extends WidgetModel<RadioButton<String>, LanguageSettingsModel>
    implements RadioButtonIWM<String> {
  /* --------------------------------- Fields --------------------------------- */

  final String languageCode;

  final ValueNotifier<String> _groupLanguageCode;

  final ThemeManager _colorsProvider;

  final ThemeWrapper theme;

  /* ------------------------------- Constructor ------------------------------ */

  LanguageModeSetWM(
    this._colorsProvider,
    this.theme,
    super._model, {
    required this.languageCode,
  }) : _groupLanguageCode = ValueNotifier<String>('');

  /* --------------------------------- Methods -------------------------------- */
  @override
  void initWidgetModel() {
    _languageChangeHandler(model.language);

    model.languageCode$.listen(_languageChangeHandler);

    super.initWidgetModel();
  }

/* ------------------------------------ ---------------------------------------*/
  void _languageChangeHandler(Language newLanguageCode) {
    _groupLanguageCode.value = newLanguageCode.code;
  }

  @override
  ValueListenable<String> get groupValue => _groupLanguageCode;

  @override
  void Function(String? p1) get onChanged => (String? value) {
        if (value == null) return;
        final Language language = model.language = model.supportedLanguages
            .firstWhere((Language element) => element.code == value);
        model.changeLanguage(language).run();
      };

  @override
  String get value => languageCode;

  @override
  Color? get activeColor =>
      _colorsProvider.currentTheme.extension<AppColors>()?.background;
}
