import 'dart:ui';

import 'package:equatable/equatable.dart';

/* ----------------------- Define the theme colors ---------------------- */

abstract interface class ThemeColors with EquatableMixin {
  /* --------------------------------- Utility -------------------------------- */
  Brightness get brightness;
  /* ---------------------------------- Base ---------------------------------- */
  /// Main background color
  Color get background;

  /// Base text color
  Color get baseText;
}
