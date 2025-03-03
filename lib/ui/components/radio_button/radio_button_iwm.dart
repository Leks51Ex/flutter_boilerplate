import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class RadioButtonIWM<Type> implements IWidgetModel {
  Type get value;

  ValueListenable<Type> get groupValue;

  void Function(Type?) get onChanged;

  Color? get activeColor;
}
