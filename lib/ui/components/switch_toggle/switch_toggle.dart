// Copyright (c) 2024 Communication and Radionavigation
// This file is part of VENOM system
// File can not be copied and/or distributed without express permission
// from head person from Communication and Radionavigation


import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/ui/components/switch_toggle/switch_toggle_iwm.dart';
import 'package:flutter_boilerplate/ui/util/responsivity.dart';

/// Main widget for Switch module

/// Main widget for Switch module
class SwitchToggle extends ElementaryWidget<SwitchToggleWM> {
  const SwitchToggle({
    required WidgetModelFactory wmFactory,
    Key? key,
  }) : super(wmFactory, key: key);

  @override
  Widget build(SwitchToggleWM wm) {
    return ValueListenableBuilder<bool>(
      valueListenable: wm.enabled,
      builder: (BuildContext context, bool value, Widget? child) {
        return SizedBox(
          width: 44,
          height: 44,
          child: ElevatedButton(
            onPressed: () {
              wm.onChanged(!value);
            },
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(const Size(44, 44)),
              maximumSize: MaterialStateProperty.all(const Size(44, 44)),
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) {
                    return Colors.grey;
                  }
                  return value
                      ? Responsivity.isDesktop(context)
                          ? const Color.fromRGBO(52, 51, 51, 1)
                          : Colors.transparent
                      : Responsivity.isDesktop(context)
                          ? const Color.fromRGBO(222, 222, 222, 1)
                          : Colors.transparent;
                },
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.zero,
              ),
            ),
            child: Icon(
              value ? Icons.dark_mode_outlined : Icons.light_mode_outlined,
              color: value
                  ? const Color.fromRGBO(244, 211, 94, 1)
                  : const Color.fromRGBO(175, 175, 175, 1),
              size: 24,
            ),
          ),
        );
      },
    );
  }
}
