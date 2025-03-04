import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.brightness,
    required this.background,
    required this.baseText,
    required this.baseAccent,
    required this.essenceBackground,
    required this.essenceText,
    required this.essenceAccent,
    required this.valid,
    required this.error,
    required this.input,
    required this.settingWidgetWindow,
    required this.dialogWindow,
    required this.firstWidgetGradientColor,
    required this.secondWidgetGradientColor,
    required this.mainWidgetOrTitleColor,
    required this.titleColor,
    required this.labelColor,
    required this.indicatorValueColor,
    required this.courseWidgetColor,
    required this.indicatorWidgetColor,
    required this.alternativeLabelColor,
    required this.depthChartColumnColor,
    required this.rpmValueBarColor,
    required this.iconButtonColor,
    required this.iconButtonBackgroundColor,
    required this.vesselPropertyTitleColor,
    required this.vesselPropertyValueColor,
    required this.barBackgroundColor,
    required this.selectedTileColor,
    required this.logoColor,
    required this.appBarIconsButtonColor,
    required this.alertColor,
    required this.allowColor,
    required this.axisColor,
    required this.vesselShipColor,
    required this.secondTitleColor,
    required this.buttonColor,
  });

  final Brightness brightness;
  final Color? background;
  final Color? baseText;
  final Color? baseAccent;
  final Color? essenceBackground;
  final Color? essenceText;
  final Color? essenceAccent;
  final Color? valid;
  final Color? error;
  final Color? input;
  final Color? settingWidgetWindow;
  final Color? dialogWindow;
  final Color? firstWidgetGradientColor;
  final Color? secondWidgetGradientColor;
  final Color? mainWidgetOrTitleColor;
  final Color? titleColor;
  final Color? labelColor;
  final Color? indicatorValueColor;
  final Color? courseWidgetColor;
  final Color? indicatorWidgetColor;
  final Color? alternativeLabelColor;
  final Color? depthChartColumnColor;
  final Color? rpmValueBarColor;
  final Color? iconButtonColor;
  final Color? iconButtonBackgroundColor;
  final Color? vesselPropertyTitleColor;
  final Color? vesselPropertyValueColor;
  final Color? barBackgroundColor;
  final Color? selectedTileColor;
  final Color? logoColor;
  final Color? appBarIconsButtonColor;
  final Color? alertColor;
  final Color? allowColor;
  final Color? axisColor;
  final Color? vesselShipColor;
  final Color? secondTitleColor;
  final Color? buttonColor;

  @override
  ThemeExtension<AppColors> copyWith({
    Brightness? brightness,
    Color? background,
    Color? baseText,
    Color? baseAccent,
    Color? essenceBackground,
    Color? essenceText,
    Color? essenceAccent,
    Color? valid,
    Color? error,
    Color? input,
    Color? settingWidgetWindow,
    Color? dialogWindow,
    Color? firstWidgetGradientColor,
    Color? secondWidgetGradientColor,
    Color? mainWidgetOrTitleColor,
    Color? titleColo,
    Color? labelColor,
    Color? indicatorValueColor,
    Color? courseWidgetColor,
    Color? indicatorWidgetColor,
    Color? alternativeLabelColor,
    Color? depthChartColumnColor,
    Color? rpmValueBarColor,
    Color? iconButtonColor,
    Color? iconButtonBackgroundColor,
    Color? vesselPropertyValueColor,
    Color? vesselPropertyTitleColor,
    Color? barBackgroundColor,
    Color? selectedTileColor,
    Color? logoColor,
    Color? appBarIconsButtonColor,
    Color? alertColor,
    Color? allowColor,
    Color? axisColor,
    Color? vesselShipColor,
    Color? secondTitleColor,
    Color? buttonColor,
  }) {
    return AppColors(
      brightness: brightness ?? this.brightness,
      background: background ?? this.background,
      baseText: baseText ?? this.baseText,
      baseAccent: baseAccent ?? this.baseAccent,
      essenceBackground: essenceBackground ?? this.essenceBackground,
      essenceText: essenceText ?? this.essenceText,
      essenceAccent: essenceAccent ?? this.essenceAccent,
      valid: valid ?? this.valid,
      error: error ?? this.error,
      input: input ?? this.input,
      settingWidgetWindow: settingWidgetWindow ?? this.settingWidgetWindow,
      dialogWindow: dialogWindow ?? this.dialogWindow,
      firstWidgetGradientColor:
          firstWidgetGradientColor ?? this.firstWidgetGradientColor,
      secondWidgetGradientColor:
          secondWidgetGradientColor ?? this.secondWidgetGradientColor,
      mainWidgetOrTitleColor:
          mainWidgetOrTitleColor ?? this.mainWidgetOrTitleColor,
      titleColor: titleColo ?? titleColor,
      labelColor: labelColor ?? this.labelColor,
      indicatorValueColor: indicatorValueColor ?? this.indicatorValueColor,
      courseWidgetColor: courseWidgetColor ?? this.courseWidgetColor,
      indicatorWidgetColor: indicatorWidgetColor ?? this.indicatorWidgetColor,
      alternativeLabelColor:
          alternativeLabelColor ?? this.alternativeLabelColor,
      depthChartColumnColor:
          depthChartColumnColor ?? this.depthChartColumnColor,
      rpmValueBarColor: rpmValueBarColor ?? this.rpmValueBarColor,
      iconButtonColor: iconButtonColor ?? this.iconButtonColor,
      iconButtonBackgroundColor:
          iconButtonBackgroundColor ?? this.iconButtonBackgroundColor,
      vesselPropertyTitleColor:
          vesselPropertyTitleColor ?? this.vesselPropertyTitleColor,
      vesselPropertyValueColor:
          vesselPropertyValueColor ?? this.vesselPropertyValueColor,
      barBackgroundColor: barBackgroundColor ?? this.barBackgroundColor,
      selectedTileColor: selectedTileColor ?? this.selectedTileColor,
      logoColor: logoColor ?? this.logoColor,
      appBarIconsButtonColor:
          appBarIconsButtonColor ?? this.appBarIconsButtonColor,
      alertColor: alertColor ?? this.alertColor,
      allowColor: allowColor ?? this.allowColor,
      axisColor: alertColor ?? this.axisColor,
      vesselShipColor: vesselShipColor ?? this.vesselShipColor,
      secondTitleColor: secondTitleColor ?? this.selectedTileColor,
      buttonColor: buttonColor ?? this.buttonColor,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(
    covariant ThemeExtension<AppColors>? other,
    double t,
  ) {
    if (other is! AppColors) {
      return this;
    }
    double t = 1;

    return AppColors(
      brightness: t < 0.5 ? brightness : other.brightness,
      background: Color.lerp(background, other.background, 1),
      baseText: Color.lerp(baseText, other.baseText, t),
      baseAccent: Color.lerp(baseAccent, other.baseAccent, t),
      essenceBackground:
          Color.lerp(essenceBackground, other.essenceBackground, t),
      essenceText: Color.lerp(essenceText, other.essenceText, t),
      essenceAccent: Color.lerp(essenceAccent, other.essenceAccent, t),
      valid: Color.lerp(valid, other.valid, t),
      error: Color.lerp(error, other.error, t),
      input: Color.lerp(input, other.input, t),
      settingWidgetWindow:
          Color.lerp(settingWidgetWindow, other.settingWidgetWindow, t),
      dialogWindow: Color.lerp(dialogWindow, other.dialogWindow, t),
      firstWidgetGradientColor: Color.lerp(
        firstWidgetGradientColor,
        other.firstWidgetGradientColor,
        t,
      ),
      secondWidgetGradientColor: Color.lerp(
        secondWidgetGradientColor,
        other.secondWidgetGradientColor,
        t,
      ),
      mainWidgetOrTitleColor:
          Color.lerp(mainWidgetOrTitleColor, other.mainWidgetOrTitleColor, t),
      titleColor: Color.lerp(titleColor, other.titleColor, t),
      labelColor: Color.lerp(labelColor, other.labelColor, t),
      indicatorValueColor:
          Color.lerp(indicatorValueColor, other.indicatorValueColor, t),
      courseWidgetColor:
          Color.lerp(courseWidgetColor, other.courseWidgetColor, t),
      indicatorWidgetColor:
          Color.lerp(indicatorWidgetColor, other.indicatorWidgetColor, t),
      alternativeLabelColor:
          Color.lerp(alternativeLabelColor, other.alternativeLabelColor, t),
      depthChartColumnColor:
          Color.lerp(depthChartColumnColor, other.depthChartColumnColor, t),
      rpmValueBarColor: Color.lerp(rpmValueBarColor, other.rpmValueBarColor, t),
      iconButtonColor: Color.lerp(iconButtonColor, other.iconButtonColor, t),
      iconButtonBackgroundColor: Color.lerp(
        iconButtonBackgroundColor,
        other.iconButtonBackgroundColor,
        t,
      ),
      vesselPropertyTitleColor: Color.lerp(
        vesselPropertyTitleColor,
        other.vesselPropertyTitleColor,
        t,
      ),
      vesselPropertyValueColor: Color.lerp(
        vesselPropertyValueColor,
        other.vesselPropertyValueColor,
        t,
      ),
      barBackgroundColor: Color.lerp(
        barBackgroundColor,
        other.barBackgroundColor,
        t,
      ),
      selectedTileColor: Color.lerp(
        selectedTileColor,
        other.selectedTileColor,
        t,
      ),
      logoColor: Color.lerp(
        logoColor,
        other.logoColor,
        t,
      ),
      appBarIconsButtonColor: Color.lerp(
        appBarIconsButtonColor,
        other.appBarIconsButtonColor,
        t,
      ),
      alertColor: Color.lerp(
        alertColor,
        other.alertColor,
        t,
      ),
      allowColor: Color.lerp(
        allowColor,
        other.allowColor,
        t,
      ),
      axisColor: Color.lerp(
        axisColor,
        other.axisColor,
        t,
      ),
      vesselShipColor: Color.lerp(
        vesselShipColor,
        other.vesselShipColor,
        t,
      ),
      secondTitleColor: Color.lerp(
        secondTitleColor,
        other.secondTitleColor,
        t,
      ),
      buttonColor: Color.lerp(
        buttonColor,
        other.buttonColor,
        t,
      ),
    );
  }

  static const AppColors light = AppColors(
    brightness: Brightness.light,
    background: Color.fromRGBO(255, 255, 255, 1),
    baseText: Color.fromRGBO(22, 22, 22, 1),
    baseAccent: Color.fromRGBO(0, 181, 181, 1),
    essenceBackground: Color.fromRGBO(222, 222, 222, 0.5),
    essenceText: Color.fromRGBO(175, 175, 175, 1),
    essenceAccent: Color.fromRGBO(99, 207, 207, 0.9),
    valid: Color.fromRGBO(0, 163, 163, 1),
    error: Color.fromRGBO(214, 55, 33, 1),
    input: Color.fromRGBO(34, 34, 34, 1),
    settingWidgetWindow: Color.fromRGBO(222, 222, 222, 1),
    dialogWindow: Color.fromRGBO(249, 249, 249, 1),
    firstWidgetGradientColor: Color.fromRGBO(198, 163, 242, 0.3),
    secondWidgetGradientColor: Color.fromRGBO(246, 48, 167, 0.3),
    mainWidgetOrTitleColor: Color.fromRGBO(135, 48, 246, 1),
    titleColor: Color.fromRGBO(135, 48, 246, 1),
    labelColor: Color.fromRGBO(135, 48, 246, 0.4),
    indicatorValueColor: Color.fromRGBO(0, 0, 0, 1),
    courseWidgetColor: Color.fromRGBO(246, 48, 167, 0.4),
    indicatorWidgetColor: Color.fromRGBO(64, 48, 246, 1),
    alternativeLabelColor: Color.fromRGBO(255, 255, 255, 1),
    depthChartColumnColor: Color.fromRGBO(0, 181, 255, 1),
    rpmValueBarColor: Color.fromRGBO(84, 181, 255, 1),
    iconButtonColor: Color.fromRGBO(175, 175, 175, 1),
    iconButtonBackgroundColor: Color.fromRGBO(222, 222, 222, 1),
    vesselPropertyTitleColor: Color.fromRGBO(80, 128, 252, 1),
    vesselPropertyValueColor: Color.fromRGBO(34, 34, 34, 1),
    barBackgroundColor: Color.fromRGBO(255, 255, 255, 1),
    selectedTileColor: Color.fromRGBO(4, 139, 254, 1),
    logoColor: Color.fromRGBO(80, 128, 252, 1.0),
    appBarIconsButtonColor: Color.fromRGBO(80, 128, 252, 1),
    alertColor: Color.fromRGBO(214, 55, 33, 1),
    allowColor: Color.fromRGBO(65, 167, 70, 1),
    axisColor: Color.fromRGBO(0, 0, 0, 1),
    vesselShipColor: Color.fromRGBO(80, 128, 252, 1),
    secondTitleColor: Color.fromRGBO(123, 95, 200, 1),
    buttonColor: Color.fromRGBO(4, 139, 254, 1),
  );

  static const AppColors dark = AppColors(
    brightness: Brightness.dark,
    background: Color.fromRGBO(28, 27, 32, 1),
    baseText: Color.fromRGBO(229, 229, 229, 1),
    baseAccent: Color.fromRGBO(244, 211, 94, 1),
    essenceBackground: Color.fromRGBO(34, 33, 33, 0.5),
    essenceText: Color.fromRGBO(174, 174, 174, 1),
    essenceAccent: Color.fromRGBO(74, 74, 74, 1),
    valid: Color.fromRGBO(212, 187, 97, 1),
    error: Color.fromRGBO(214, 55, 33, 1),
    input: Color.fromRGBO(255, 255, 255, 1),
    settingWidgetWindow: Color.fromRGBO(52, 51, 51, 1),
    dialogWindow: Color.fromRGBO(52, 51, 51, 1),
    firstWidgetGradientColor: Color.fromRGBO(123, 246, 48, 0.3),
    secondWidgetGradientColor: Color.fromRGBO(246, 167, 48, 0.3),
    mainWidgetOrTitleColor: Color.fromRGBO(246, 167, 48, 1),
    titleColor: Color.fromRGBO(246, 167, 48, 1),
    labelColor: Color.fromRGBO(123, 246, 48, 0.4),
    indicatorValueColor: Color.fromRGBO(229, 229, 229, 1),
    courseWidgetColor: Color.fromRGBO(246, 238, 48, 0.4),
    indicatorWidgetColor: Color.fromRGBO(123, 246, 48, 1),
    alternativeLabelColor: Color.fromRGBO(0, 0, 0, 1),
    depthChartColumnColor: Color.fromRGBO(123, 246, 48, 1),
    rpmValueBarColor: Color.fromRGBO(244, 211, 94, 1),
    iconButtonColor: Color.fromRGBO(244, 211, 94, 1),
    iconButtonBackgroundColor: Color.fromRGBO(52, 51, 51, 1),
    vesselPropertyTitleColor: Color.fromRGBO(119, 237, 0, 1),
    vesselPropertyValueColor: Color.fromRGBO(229, 229, 229, 1),
    barBackgroundColor: Color.fromRGBO(0, 0, 0, 1),
    selectedTileColor: Color.fromRGBO(119, 237, 0, 1),
    logoColor: Color.fromRGBO(246, 167, 48, 1.0),
    appBarIconsButtonColor: Color.fromRGBO(119, 237, 0, 1),
    alertColor: Color.fromRGBO(214, 55, 33, 1),
    allowColor: Color.fromRGBO(65, 167, 70, 1),
    axisColor: Color.fromRGBO(255, 255, 255, 1),
    vesselShipColor: Color.fromRGBO(192, 153, 51, 1),
    secondTitleColor: Color.fromRGBO(119, 237, 0, 1),
    buttonColor: Color.fromRGBO(179, 246, 111, 1),
  );
}
