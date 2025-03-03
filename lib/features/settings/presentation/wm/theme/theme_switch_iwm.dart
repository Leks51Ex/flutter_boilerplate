import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

abstract interface class ThemeSwitchIwm implements IWidgetModel {
  void onClick();
  Color? get iconColor;
  Color? get borderColor;

  Icon get icon;
}
