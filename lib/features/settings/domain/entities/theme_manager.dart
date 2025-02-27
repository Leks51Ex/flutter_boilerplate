import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/app_colors.dart';

class ThemeManager extends ChangeNotifier with WidgetsBindingObserver {
  ThemeData _currentTheme;
  final ThemeData lightTheme;
  final ThemeData darkTheme;
  bool isDarkTheme;
  bool isSystemTheme;

  ThemeManager({
    required this.lightTheme,
    required this.darkTheme,
    this.isDarkTheme = false,
    this.isSystemTheme = false,
  }) : _currentTheme = isDarkTheme ? darkTheme : lightTheme {
    _initializeTheme();
    WidgetsBinding.instance.addPostFrameCallback((Duration timeStamp) {
      notifyListeners();
    });
  }

  ThemeData get currentTheme => _currentTheme;

  void setDarkTheme() {
    isSystemTheme = false;
    _currentTheme = darkTheme;
    isDarkTheme = true;
    notifyListeners();
  }

  void setLightTheme() {
    isSystemTheme = false;
    _currentTheme = lightTheme;
    isDarkTheme = false;
    notifyListeners();
  }

  void setSystemTheme() {
    isSystemTheme = true;
    final Brightness brightness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;
    isDarkTheme = brightness == Brightness.dark;
    _currentTheme = isDarkTheme ? darkTheme : lightTheme;
    notifyListeners();
  }

  void updateTheme(AppColors colors) {
    if (colors == AppColors.light) {
      setLightTheme();
    } else if (colors == AppColors.dark) {
      setDarkTheme();
    }
  }

  void toggleTheme() {
    if (isSystemTheme) {
      final Brightness brightness =
          WidgetsBinding.instance.platformDispatcher.platformBrightness;
      isDarkTheme = brightness == Brightness.dark;
      _currentTheme = isDarkTheme ? darkTheme : lightTheme;
    } else {
      if (isDarkTheme) {
        setLightTheme();
      } else {
        setDarkTheme();
      }
    }
  }

  void _initializeTheme() {
    if (isSystemTheme) {
      final Brightness brightness =
          WidgetsBinding.instance.platformDispatcher.platformBrightness;
      isDarkTheme = brightness == Brightness.dark;
      _currentTheme = isDarkTheme ? darkTheme : lightTheme;
    }
    notifyListeners();
  }

  @override
  void didChangePlatformBrightness() {
    if (isSystemTheme) {
      final Brightness brightness =
          WidgetsBinding.instance.platformDispatcher.platformBrightness;
      isDarkTheme = brightness == Brightness.dark;
      _currentTheme = isDarkTheme ? darkTheme : lightTheme;
      notifyListeners();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}
