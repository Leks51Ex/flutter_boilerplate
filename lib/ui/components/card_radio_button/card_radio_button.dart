
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/ui/components/card_radio_button/card_radio_buttom_iwm.dart';
import 'package:flutter_boilerplate/ui/util/responsivity.dart';


/// Main widget for CardRadioButtone
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
              height: Responsivity.isMobile(context) ? 200 : null,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
                border:
                    Border.all(width: 2, color: wm.stateColor!.withOpacity(1)),
              ),
              child: Responsivity.isDesktop(context) ||
                      Responsivity.isTablet(context)
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        if (headingIcon != null)
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 11,
                              vertical: 10,
                            ),
                            color: wm.stateColor!.withOpacity(.2),
                            child: CardRadioHeading(
                              headingIcon: headingIcon!,
                              headingStyle: wm.headingStyle,
                              descriptionStyle: wm.headingStyle,
                              iconColor: wm.iconColor!,
                              title: wm.title,
                              checkedColor: wm.stateColor!,
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                            bottom: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              const SizedBox(
                                height: 10,
                              ),
                              LayoutBuilder(builder: contentBuilder!),
                            ],
                          ),
                        ),
                      ],
                    )
                  : LayoutBuilder(builder: contentBuilder!),
            ),
          ),
        );
      },
    );
  }
}

class CardRadioHeading extends StatelessWidget {
  const CardRadioHeading({
    this.headingIcon,
    this.iconColor,
    this.title,
    this.checkedColor,
    super.key,
    this.headingStyle,
    this.descriptionStyle,
  });

  final String? headingIcon;
  final String? title;

  final Color? iconColor;
  final TextStyle? headingStyle;
  final TextStyle? descriptionStyle;
  final Color? checkedColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        if (headingIcon != null)
          // SvgPicture.asset(
          //   headingIcon!,
          //   width: 6,
          //   height: 26,
          //   colorFilter: ColorFilter.mode(
          //     iconColor!,
          //     BlendMode.srcIn,
          //   ),
          // ),
        const SizedBox(
          width: 8,
        ),
        if (title != null)
          Column(
            children: <Widget>[
              Text(
                title!,
                style: descriptionStyle,
              ),
            ],
          ),
        const Spacer(),
        // SvgPicture.asset(
        //   'assets/icons/checkmark.svg',
        //   width: 26,
        //   height: 26,
        //   colorFilter: ColorFilter.mode(
        //     checkedColor!,
        //     BlendMode.srcIn,
        //   ),
        // ),
      ],
    );
  }
}
