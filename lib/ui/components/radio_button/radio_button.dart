import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/ui/components/radio_button/radio_button_iwm.dart';

class RadioButton<ValueType>
    extends ElementaryWidget<RadioButtonIWM<ValueType>> {
  final Widget title;
  final Widget subtitle;

  const RadioButton(
    super.wmFactory, {
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(RadioButtonIWM<ValueType> wm) {
    return ValueListenableBuilder<ValueType>(
      valueListenable: wm.groupValue,
      builder: (BuildContext context, ValueType groupValue, Widget? child) {
        return RadioListTile<ValueType>(
          value: wm.value,
          title: title,
          subtitle: subtitle,
          groupValue: groupValue,
          onChanged: wm.onChanged,
          activeColor: wm.activeColor,
        );
      },
    );
  }
}
