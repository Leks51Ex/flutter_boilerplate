import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class CardRadioButtonWM implements IWidgetModel {
  String get title;

  String get description;

  Color? get stateColor;

  Color? get iconColor;

  ValueListenable<bool> get enabled;

  TextStyle? get headingStyle;

  TextStyle? get descriptionStyle;

  void onClick(bool value);
}
