import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/di/di.dart';
import 'package:flutter_boilerplate/common/app_colors.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme/modes.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme/theme_manager.dart';
import 'package:flutter_boilerplate/features/settings/presentation/models/theme_settings_model.dart';
import 'package:flutter_boilerplate/ui/components/card_radio_button.dart';
import 'package:flutter_boilerplate/ui/components/card_radio_button.wm.iface.dart';
import 'package:provider/provider.dart';

ThemeModeSetWM Function(BuildContext context) themeModeSetWMFactory({
  required String title,
  required String description,
  required AppThemeMode controlledMode,
}) =>
    (BuildContext context) {
      final ThemeManager colorsProvider = context.read<ThemeManager>();

      final ThemeWrapper themeWrapper = ThemeWrapper();

      final ThemeSettingsModel model = ThemeSettingsModel(sl(), sl());

      return ThemeModeSetWM(
        model,
        title: title,
        description: description,
        mode: controlledMode,
        colorsProvider: colorsProvider,
        theme: themeWrapper,
      );
    };

class ThemeModeSetWM extends WidgetModel<CardRadioButton, ThemeSettingsModel>
    implements CardRadioButtonWM {
/* --------------------------------- Fields --------------------------------- */
  @override
  final String title;
/* -------------------------------------------------------------------------- */

/* -------------------------------------------------------------------------- */
  final AppThemeMode mode;
/* -------------------------------------------------------------------------- */
  @override
  final String description;
/* -------------------------------------------------------------------------- */
  final ThemeManager colorsProvider;
/* -------------------------------------------------------------------------- */
  final ThemeWrapper theme;
/* -------------------------------------------------------------------------- */
  final ValueNotifier<bool> _enabled;
//  ----------------------------- Constructor ------------------------------ */
  ThemeModeSetWM(
    super._model, {
    required this.colorsProvider,
    required this.theme,
    required this.mode,
    required this.title,
    required this.description,
  }) : _enabled = ValueNotifier<bool>(false);
/* -------------------------------------------------------------------------- */
  @override
  void initWidgetModel() {
    /// Set initial state of WM
    _themeModeUpdated(model.mode);

    /// Listen for theme mode changes
    model.mode$.listen(_themeModeUpdated);

    /// Force rebuild when theme colors changes
    colorsProvider.addListener(() {
      _enabled.value = _enabled.value;
    });

    super.initWidgetModel();
  }

/* -------------------------------------------------------------------------- */
  void _themeModeUpdated(AppThemeMode newMode) {
    _enabled.value = mode == newMode;
  }

/* ----------------------------- Implementations ---------------------------- */
  @override
  TextStyle? get descriptionStyle =>
      theme.getTextTheme(context).bodySmall?.copyWith(
            color: colorsProvider.currentTheme
                .extension<AppColors>()
                ?.iconButtonColor,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          );
/* -------------------------------------------------------------------------- */
  @override
  ValueListenable<bool> get enabled => _enabled;
/* -------------------------------------------------------------------------- */
  @override
  TextStyle? get headingStyle =>
      theme.getTextTheme(context).titleMedium?.copyWith(
            color: colorsProvider.currentTheme.extension<AppColors>()?.baseText,
          );
/* -------------------------------------------------------------------------- */
  @override
  Color? get iconColor =>
      colorsProvider.currentTheme.extension<AppColors>()?.baseText;
/* -------------------------------------------------------------------------- */
  @override
  void onClick(bool value) {
    model.changeTheme(mode).run();
    if (mode == AppThemeMode.dark) {
      colorsProvider.setDarkTheme();
    } else if (mode == AppThemeMode.light) {
      colorsProvider.setLightTheme();
    } else {
      colorsProvider.setSystemTheme();
    }
  }

/* -------------------------------------------------------------------------- */
  @override
  Color? get stateColor {
    return _enabled.value
        ? colorsProvider.currentTheme
            .extension<AppColors>()
            ?.appBarIconsButtonColor!
            .withOpacity(1)
        : colorsProvider.currentTheme.extension<AppColors>()?.essenceText;
  }

/* -------------------------------------------------------------------------- */
}
