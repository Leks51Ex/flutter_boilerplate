import 'dart:ui';

import 'package:flutter_boilerplate/common/theme_colors.dart';

class DarkThemeColors implements ThemeColors {
  @override
  Brightness get brightness => Brightness.dark;

  @override
  Color get background => const Color.fromRGBO(12, 12, 12, 1);

  @override
  Color get baseAccent => const Color.fromRGBO(244, 211, 94, 1);

  @override
  Color get baseText => const Color.fromRGBO(229, 229, 229, 1);

  @override
  Color get error => const Color.fromRGBO(214, 55, 33, 1);

  @override
  Color get essenceAccent => const Color.fromRGBO(74, 74, 74, 1);

  @override
  Color get essenceBackground => const Color.fromRGBO(34, 33, 33, 0.5);

  @override
  Color get essenceText => const Color.fromRGBO(174, 174, 174, 1);

  @override
  Color get valid => const Color.fromRGBO(212, 187, 97, 1);

  @override
  List<Object?> get props => <Object?>['Dark'];

  @override
  bool? get stringify => false;

  @override
  Color get input => const Color.fromRGBO(255, 255, 255, 1);

  @override
  Color get settingWidgetWindow => const Color.fromRGBO(52, 51, 51, 1);

  @override
  Color get dialogWindow => const Color.fromRGBO(52, 51, 51, 1);

  @override
  Color get firstWidgetGradientColor => const Color.fromRGBO(123, 246, 48, 0.3);

  @override
  Color get indicatorValueColor => const Color.fromRGBO(229, 229, 229, 1);

  @override
  Color get labelColor => const Color.fromRGBO(123, 246, 48, 0.4);

  @override
  Color get mainWidgetOrTitleColor => const Color.fromRGBO(246, 167, 48, 1);

  @override
  Color get secondWidgetGradientColor =>
      const Color.fromRGBO(246, 167, 48, 0.3);

  @override
  Color get titleColor => const Color.fromRGBO(246, 167, 48, 1);

  @override
  Color get courseWidgetColor => const Color.fromRGBO(246, 238, 48, 0.4);

  @override
  Color get indicatorWidgetColor => const Color.fromRGBO(123, 246, 48, 1);

  @override
  Color get alternativeLabelColor => const Color.fromRGBO(0, 0, 0, 1);

  @override
  Color get depthChartColumnColor => const Color.fromRGBO(123, 246, 48, 1);

  @override
  Color get rpmValueBarColor => const Color.fromRGBO(244, 211, 94, 1);

  @override
  Color get iconButtonColor => const Color.fromRGBO(244, 211, 94, 1);

  @override
  Color get iconButtonBackgroundColor => const Color.fromRGBO(52, 51, 51, 1);

  @override
  Color get selectedTileColor => const Color.fromRGBO(119, 237, 0, 1);
}
