import 'dart:ui';

import 'package:flutter_boilerplate/features/theme_settings/common/theme_colors.dart';

//Default dark theme colors

class DarkThemeColors implements ThemeColors {
  @override
  Brightness get brightness => Brightness.dark;

  @override
  Color get background => const Color.fromRGBO(12, 12, 12, 1);

  @override
  Color get baseText => const Color.fromRGBO(229, 229, 229, 1);

  @override
  List<Object?> get props => <Object?>['Dark'];

  @override
  bool? get stringify => false;
}
