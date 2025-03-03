import 'dart:ui';

import 'package:flutter_boilerplate/common/theme_colors.dart';

class LightThemeColors implements ThemeColors {
  @override
  Brightness get brightness => Brightness.light;

  @override
  Color get background => const Color.fromRGBO(240, 240, 240, 1);

  @override
  Color get baseAccent => const Color.fromRGBO(0, 181, 181, 1);

  @override
  Color get baseText => const Color.fromRGBO(22, 22, 22, 1);

  @override
  Color get error => const Color.fromRGBO(214, 55, 33, 1);

  @override
  Color get essenceAccent => const Color.fromRGBO(99, 207, 207, 0.9);

  @override
  Color get essenceBackground => const Color.fromRGBO(222, 222, 222, 0.5);

  @override
  Color get essenceText => const Color.fromRGBO(175, 175, 175, 1);

  @override
  Color get valid => const Color.fromRGBO(0, 163, 163, 1);

  @override
  List<Object?> get props => <Object?>['Light'];

  @override
  bool? get stringify => false;

  @override
  Color get input => const Color.fromRGBO(34, 34, 34, 1);

  @override
  Color get settingWidgetWindow => const Color.fromRGBO(222, 222, 222, 1);

  @override
  Color get dialogWindow => const Color.fromRGBO(249, 249, 249, 1);

  @override
  Color get firstWidgetGradientColor =>
      const Color.fromRGBO(198, 163, 242, 0.3);

  @override
  Color get indicatorValueColor => const Color.fromRGBO(0, 0, 0, 1);

  @override
  Color get labelColor => const Color.fromRGBO(135, 48, 246, 0.4);

  @override
  Color get mainWidgetOrTitleColor => const Color.fromRGBO(135, 48, 246, 1);

  @override
  Color get secondWidgetGradientColor =>
      const Color.fromRGBO(246, 48, 167, 0.3);

  @override
  Color get titleColor => const Color.fromRGBO(135, 48, 246, 1);

  @override
  Color get courseWidgetColor => const Color.fromRGBO(246, 48, 167, 0.4);

  @override
  Color get indicatorWidgetColor => const Color.fromRGBO(64, 48, 246, 1);

  @override
  Color get alternativeLabelColor => const Color.fromRGBO(255, 255, 255, 1);

  @override
  Color get depthChartColumnColor => const Color.fromRGBO(0, 181, 255, 1);

  @override
  Color get rpmValueBarColor => const Color.fromRGBO(84, 181, 255, 1);

  @override
  Color get iconButtonColor => const Color.fromRGBO(175, 175, 175, 1);

  @override
  Color get iconButtonBackgroundColor => const Color.fromRGBO(222, 222, 222, 1);

  @override
  Color get selectedTileColor => const Color.fromRGBO(4, 139, 254, 1);
}
