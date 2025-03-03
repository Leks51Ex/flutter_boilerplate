import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/features/settings/presentation/widgets/language/language_list.dart';
import 'package:flutter_boilerplate/common/app_colors.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme/modes.dart';
import 'package:flutter_boilerplate/features/settings/presentation/wm/theme/theme_mode_set.wm.dart';
import 'package:flutter_boilerplate/l10n/generated/app_localizations.g.dart';
import 'package:flutter_boilerplate/ui/components/card_radio_button.dart';
import 'package:flutter_svg/svg.dart';

class DesktopThemeSettingsPage extends StatelessWidget {
  const DesktopThemeSettingsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AppColors? appColors = Theme.of(context).extension<AppColors>();
    return Scaffold(
      backgroundColor: appColors!.background,
      body: SingleChildScrollView(
        physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                AppLocalizations.of(context)!.themeSettingTop,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  fontFamily: 'Urbanist',
                  color: appColors!.input,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                AppLocalizations.of(context)!.themeSettingChild,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  fontFamily: 'Urbanist',
                  color: Color.fromRGBO(175, 175, 175, 1),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: CardRadioButton(
                      headingIcon: 'assets/icons/monitor.svg',
                      contentBuilder: (
                        BuildContext context,
                        BoxConstraints constraints,
                      ) {
                        return SvgPicture.asset(
                          'assets/screens/system_screen.svg',
                          width: constraints.maxWidth,
                        );
                      },
                      wmFactory: themeModeSetWMFactory(
                        controlledMode: AppThemeMode.system,
                        title:
                            AppLocalizations.of(context)!.systemThemeTitleCard,
                        description: '',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 28,
                  ),
                  Expanded(
                    child: CardRadioButton(
                      headingIcon: 'assets/icons/sun.svg',
                      contentBuilder: (
                        BuildContext context,
                        BoxConstraints constraints,
                      ) {
                        return SvgPicture.asset(
                          'assets/screens/light_screen.svg',
                          width: constraints.maxWidth,
                        );
                      },
                      wmFactory: themeModeSetWMFactory(
                        controlledMode: AppThemeMode.light,
                        title:
                            AppLocalizations.of(context)!.lightThemeTitleCard,
                        description: '',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 28,
                  ),
                  Expanded(
                    child: CardRadioButton(
                      headingIcon: 'assets/icons/moon.svg',
                      contentBuilder: (
                        BuildContext context,
                        BoxConstraints constraints,
                      ) {
                        return SvgPicture.asset(
                          'assets/screens/dark_screen.svg',
                          width: constraints.maxWidth,
                        );
                      },
                      wmFactory: themeModeSetWMFactory(
                        controlledMode: AppThemeMode.dark,
                        title: AppLocalizations.of(context)!.darkThemeTitleCard,
                        description: '',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
