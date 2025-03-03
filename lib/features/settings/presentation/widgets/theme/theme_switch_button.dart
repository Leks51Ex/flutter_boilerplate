import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/features/settings/presentation/wm/theme/theme_switch_iwm.dart';

class ThemeSwitcherButton extends ElementaryWidget<ThemeSwitchIwm> {
  const ThemeSwitcherButton(super.wmFactory, {super.key});

  @override
  Widget build(ThemeSwitchIwm wm) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: wm.borderColor!,
          width: 1.2,
        ),
      ),
      child: IconButton(
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        icon: wm.icon,
        onPressed: () {
          wm.onClick();
        },
      ),
    );
  }
}
