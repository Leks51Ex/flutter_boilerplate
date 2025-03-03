import 'dart:ui';

import 'package:equatable/equatable.dart';

abstract interface class ThemeColors with EquatableMixin {
  /* --------------------------------- Utility -------------------------------- */
  Brightness get brightness;
  /* ---------------------------------- Base ---------------------------------- */
  /// Main background color
  Color get background;

  /// Base text color
  Color get baseText;

  /// Base accent color getter
  Color get baseAccent;

  /* --------------------------------- Surface -------------------------------- */
  /// Suface / paper / element background color
  Color get essenceBackground;

  /// Surface / paper / element text color
  Color get essenceText;

  /// Suface / paper / element accent color
  Color get essenceAccent;

  /* ------------------------------- Validation ------------------------------- */
  /// Succeed validation color
  Color get valid;

  /// Error validation color
  Color get error;

  ///Input text color
  Color get input;

  //Dialog window color
  Color get settingWidgetWindow;

  Color get dialogWindow;

  /* -------------------------- Colors after redisign ------------------------- */

  Color get firstWidgetGradientColor;

  Color get secondWidgetGradientColor;

  Color get mainWidgetOrTitleColor;

  Color get titleColor;

  Color get labelColor;

  Color get indicatorValueColor;

  Color get courseWidgetColor;

  Color get indicatorWidgetColor;

  Color get alternativeLabelColor;

  Color get depthChartColumnColor;

  Color get rpmValueBarColor;

  Color get iconButtonColor;

  Color get iconButtonBackgroundColor;

  Color get selectedTileColor;
}
