import 'dart:ui';

import 'package:flutter_boilerplate/features/theme_settings/common/theme_colors.dart';

//Default dark theme colors

class LightThemeColors implements ThemeColors {
  @override
  Brightness get brightness => Brightness.light;

  @override
  Color get background => const Color.fromRGBO(240, 240, 240, 1);

  @override
  Color get baseText => const Color.fromRGBO(22, 22, 22, 1);

  @override
  List<Object?> get props => <Object?>['Light'];

  @override
  bool? get stringify => false;
}
