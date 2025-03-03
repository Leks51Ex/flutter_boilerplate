import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/di/di.dart';
import 'package:flutter_boilerplate/common/app_colors.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme/theme_manager.dart';
import 'package:flutter_boilerplate/features/settings/presentation/models/theme_settings_model.dart';
import 'package:flutter_boilerplate/features/settings/presentation/widgets/theme/theme_switch_button.dart';
import 'package:flutter_boilerplate/features/settings/presentation/wm/theme/theme_switch_iwm.dart';
import 'package:provider/provider.dart';

ThemeSwitchWm themeSwitchWmFactory(BuildContext context) {
  final ThemeManager themeNotifier = Provider.of<ThemeManager>(context);
  final ThemeWrapper themeWrapper = ThemeWrapper();
  final ThemeSettingsModel themeModel = ThemeSettingsModel(sl(), sl());
  return ThemeSwitchWm(themeModel, themeNotifier, themeWrapper);
}

class ThemeSwitchWm extends WidgetModel<ThemeSwitcherButton, ThemeSettingsModel>
    implements ThemeSwitchIwm {
  ThemeSwitchWm(super._model, this._colorsProvider, this.theme);

  final ThemeManager _colorsProvider;
  final ThemeWrapper theme;

  @override
  Color? get iconColor => _colorsProvider.currentTheme
      .extension<AppColors>()
      ?.appBarIconsButtonColor;

  @override
  Color? get borderColor => _colorsProvider.currentTheme
      .extension<AppColors>()
      ?.secondTitleColor!
      .withOpacity(0.2);

  @override
  void onClick() {
    Provider.of<ThemeManager>(context, listen: false).toggleTheme();
  }

  @override
  Icon get icon {
    return Icon(
      _colorsProvider.isDarkTheme
          ? Icons.dark_mode_outlined
          : Icons.light_mode_outlined,
      color: iconColor,
    );
  }
}
