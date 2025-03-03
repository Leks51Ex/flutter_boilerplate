import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/di/di.dart';
import 'package:flutter_boilerplate/features/app/presentation/models/app_model.dart';
import 'package:flutter_boilerplate/features/app/presentation/widgets/app.dart';
import 'package:flutter_boilerplate/features/app/presentation/wm/app_iwm.dart';
import 'package:flutter_boilerplate/features/navigation/domain/entities/router.dart';
import 'package:flutter_boilerplate/common/app_colors.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme/theme_manager.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme/theme_modes.dart';

AppWm appWmFactory(BuildContext context) {
  final AppModel model = AppModel(sl(), sl());

  return AppWm(model);
}

class AppWm extends WidgetModel<App, AppModel> implements AppIWm {
/* ---------------------------------- Data ---------------------------------- */

  final AppRouter _router;
  final ValueNotifier<String> _languageCode;
  final ValueNotifier<AppColors> _themeColors;

  /// Platform dispatcher instance to handle  [Brightness] changes
  late PlatformDispatcher _platformDispatcher;

  /* ------------------------------- Constructor ------------------------------ */

  AppWm(super.model)
      : _router = AppRouter(),
        _themeColors = ValueNotifier<AppColors>(AppColors.light),
        _languageCode =
            ValueNotifier<String>('en'); //TODO init language code from model

  /* --------------------------------- Getters -------------------------------- */

  @override
  RouterConfig<Object> get routerConfig => _router.config();

  @override
  ValueListenable<AppColors> get colors => _themeColors;

  @override
  ValueListenable<String> get languageCode => _languageCode;

  /* --------------------------------- Methods -------------------------------- */
  void _updateThemeColors(AppThemeMode mode) {
    if (mode == AppThemeMode.light) {
      _themeColors.value = AppColors.light;
    } else if (mode == AppThemeMode.dark) {
      _themeColors.value = AppColors.dark;
    } else {
      _resolveBrightness();
    }
    _updateThemeManager();
  }

// TODO create Language
//   void _updateLocale(Language lang) {
//     _languageCode.value = lang.code;
//   }

  void _handleBrightnessChanges() {
    // ? If system theme mode configured and theme have not been
    // ? changed manually
    if (model.mode == AppThemeMode.system && !model.isManualConfigured) {
      _resolveBrightness();
    }
    WidgetsBinding.instance.handlePlatformBrightnessChanged();

    _resolveBrightness();
  }

  void _resolveBrightness() {
    final Brightness brightness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;
    if (brightness == Brightness.dark) {
      _updateThemeColors(AppThemeMode.dark);
    } else {
      _updateThemeColors(AppThemeMode.light);
    }
  }

  void _updateThemeManager() {
    final ThemeManager themeManager = sl<ThemeManager>();
    if (_themeColors.value == AppColors.light) {
      themeManager.setLightTheme();
    } else if (_themeColors.value == AppColors.dark) {
      themeManager.setDarkTheme();
    }
  }

  /* ---------------------------- Init widget model --------------------------- */

  @override
  void initWidgetModel() async {
    _updateThemeColors(model.mode);
    model.mode$.listen(_updateThemeColors);
    // model.language$.listen(_updateLocale);
    _platformDispatcher = WidgetsBinding.instance.platformDispatcher;
    _platformDispatcher.onPlatformBrightnessChanged = _handleBrightnessChanges;
    await model.restoreSettings().run();
    super.initWidgetModel();
  }
}
