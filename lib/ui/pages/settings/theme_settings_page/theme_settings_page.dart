import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/app_colors.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme/modes.dart';
import 'package:flutter_boilerplate/features/settings/presentation/wm/theme/theme_mode_set.wm.dart';
import 'package:flutter_boilerplate/l10n/generated/app_localizations.g.dart';
import 'package:flutter_boilerplate/ui/components/card_radio_button.dart';
import 'package:flutter_boilerplate/ui/layouts/general_layout.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class ThemeSettingsPage extends StatelessWidget {
  const ThemeSettingsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AppColors? appColors = Theme.of(context).extension<AppColors>();
    return GeneralLayout(
      section: SafeArea(
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                AppLocalizations.of(context)!.settingsTitle,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  fontFamily: 'Urbanist',
                  color: appColors!.input,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: <Widget>[
                CardRadioButton(
                  contentBuilder: (
                    BuildContext context,
                    BoxConstraints constraints,
                  ) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 0,
                        bottom: 0,
                      ),
                      child: SvgPicture.asset(
                        'assets/screens/mobile_system_screen.svg',
                        width: constraints.maxWidth,
                      ),
                    );
                  },
                  wmFactory: themeModeSetWMFactory(
                    controlledMode: AppThemeMode.system,
                    title: AppLocalizations.of(context)!.systemThemeTitleCard,
                    description: '',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CardRadioButton(
                  contentBuilder: (
                    BuildContext context,
                    BoxConstraints constraints,
                  ) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 0,
                        bottom: 0,
                      ),
                      child: SvgPicture.asset(
                        'assets/screens/mobile_dark_screen.svg',
                        width: constraints.maxWidth,
                      ),
                    );
                  },
                  wmFactory: themeModeSetWMFactory(
                    controlledMode: AppThemeMode.dark,
                    title: AppLocalizations.of(context)!.darkThemeTitleCard,
                    description: '',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CardRadioButton(
                  contentBuilder: (
                    BuildContext context,
                    BoxConstraints constraints,
                  ) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 0,
                        bottom: 0,
                      ),
                      child: SvgPicture.asset(
                        'assets/screens/mobile_light_screen.svg',
                        width: constraints.maxWidth,
                      ),
                    );
                  },
                  wmFactory: themeModeSetWMFactory(
                    controlledMode: AppThemeMode.light,
                    title: AppLocalizations.of(context)!.lightThemeTitleCard,
                    description: '',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
