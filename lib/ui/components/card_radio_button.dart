import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/ui/components/card_radio_button.wm.iface.dart';
import 'package:flutter_boilerplate/ui/util/responsivity.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Main widget for CardRadioButton
class CardRadioButton extends ElementaryWidget<CardRadioButtonWM> {
  final String? headingIcon;
  final Widget Function(BuildContext, BoxConstraints)? contentBuilder;

  const CardRadioButton({
    required this.contentBuilder,
    required WidgetModelFactory wmFactory,
    this.headingIcon,
    Key? key,
  }) : super(wmFactory, key: key);

  @override
  Widget build(CardRadioButtonWM wm) {
    return ValueListenableBuilder<bool>(
      valueListenable: wm.enabled,
      builder: (BuildContext context, bool enabled, Widget? child) {
        return MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () => wm.onClick(enabled),
            child: Container(
              height: Responsivity.isMobile(context) ? 50 : null,
              width: 280,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
                border: Border.all(width: 2, color: Colors.transparent),
              ),
              child: Stack(
                children: [
                  ThemeToggleComponent(
                    titleTheme: wm.title,
                  ),
                  if (enabled)
                    Positioned(
                      right: 8,
                      top: 8,
                      child: Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class ThemeToggleComponent extends StatelessWidget {
  final titleTheme;

  const ThemeToggleComponent({
    super.key,
    required this.titleTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [Text(titleTheme)],
      ),
    );
  }
}
