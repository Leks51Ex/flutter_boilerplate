import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/di/di.dart';
import 'package:flutter_boilerplate/features/app/presentation/model/app_settings.model.dart';
import 'package:flutter_boilerplate/features/app/presentation/widgets/app/app.dart';
import 'package:flutter_boilerplate/features/app/presentation/widgets/app/app.wm.iface.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/language/language.dart';
import 'package:flutter_boilerplate/features/navigation/data/router.dart';
import 'package:flutter_boilerplate/common/app_colors.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme/modes.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme/theme_manager.dart';
import 'package:flutter_boilerplate/l10n/generated/app_localizations.g.dart';

AppSettingsWm defaultAppThemeWmFactory(BuildContext context) {
  final AppSettingsModel model = AppSettingsModel(sl(), sl());

  return AppSettingsWm(model);
}

class AppSettingsWm extends WidgetModel<App, AppSettingsModel>
    implements AppWm {
/* ---------------------------------- Data ---------------------------------- */
  // Theme colors changes notifier
  final ValueNotifier<AppColors> _themeColors;
/* -------------------------------------------------------------------------- */
  final ValueNotifier<String> _languageCode;

/* -------------------------------------------------------------------------- */
  /// General application router
  final AppRouter _router;
/* -------------------------------------------------------------------------- */
  /// Platform dispatcher instance to handle  [Brightness] changes
  late PlatformDispatcher _platformDispatcher;
/* ------------------------------- Constructor ------------------------------ */
  AppSettingsWm(
    super._model,
  )   : _themeColors = ValueNotifier<AppColors>(AppColors.light),
        _languageCode = ValueNotifier<String>(_model.language.code),
        _router = AppRouter();
/* --------------------------------- Getters -------------------------------- */
  @override
  RouterConfig<Object> get routerConfig => _router.config();
/* -------------------------------------------------------------------------- */
  @override
  ValueListenable<AppColors> get colors => _themeColors;
/* -------------------------------------------------------------------------- */
  @override
  ValueListenable<String> get languageCode => _languageCode;
/* -------------------------------------------------------------------------- */
  @override
  List<LocalizationsDelegate<dynamic>> get localizationDelegates =>
      AppLocalizations.localizationsDelegates;
/* -------------------------------------------------------------------------- */
  @override
  List<Locale> get supportedLocales => AppLocalizations.supportedLocales;
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

  void _updateLocale(Language lang) {
    _languageCode.value = lang.code;
  }

  void _handleBrightnessChanges() {
    // ? If system theme mode configured and theme have not been
    // ? changed manually
    if (model.mode == AppThemeMode.system && !model.isManualConfigured) {
      _resolveBrightness();
    }
    WidgetsBinding.instance.handlePlatformBrightnessChanged();
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

  @override
  void initWidgetModel() async {
    _updateThemeColors(model.mode);
    model.mode$.listen(_updateThemeColors);
    model.language$.listen(_updateLocale);
    _platformDispatcher = WidgetsBinding.instance.platformDispatcher;
    _platformDispatcher.onPlatformBrightnessChanged = _handleBrightnessChanges;
    await model.restoreSettings().run();
    super.initWidgetModel();
  }
}
