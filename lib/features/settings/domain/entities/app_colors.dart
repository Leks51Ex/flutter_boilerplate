import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  /* ---------------------------------- Data ---------------------------------- */
  final Brightness brightness;
  final Color? background;

  /* ------------------------------- Constructor ------------------------------ */
  const AppColors({
    required this.brightness,
    required this.background,
  });

  @override
  ThemeExtension<AppColors> copyWith({
    Brightness? brightness,
    Color? background,
  }) {
    return AppColors(
      brightness: brightness ?? this.brightness,
      background: background ?? this.background,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(
      covariant ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    double t = 1;
    return AppColors(
        brightness: t < 0.5 ? brightness : other.brightness,
        background: Color.lerp(background, other.background, 1));
  }

  static const AppColors light = AppColors(
    brightness: Brightness.light,
    background: Color.fromRGBO(240, 240, 240, 1),
  );

  static const AppColors dark = AppColors(
    brightness: Brightness.dark,
    background: Color.fromRGBO(18, 18, 18, 0.98),
  );
}
