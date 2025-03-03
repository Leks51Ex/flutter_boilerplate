import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/ui/pages/settings/theme_settings_page/desktop_theme_settings_page.dart';
import 'package:flutter_boilerplate/ui/pages/settings/theme_settings_page/mobile_theme_settings_page.dart';
import 'package:flutter_boilerplate/ui/util/responsivity.dart';

@RoutePage()
class ThemeSettingsPage extends StatelessWidget {
  const ThemeSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    StatelessWidget buildThemePage() {
      if (Responsivity.isDesktop(context) || Responsivity.isTablet(context)) {
        return const DesktopThemeSettingsPage();
      } else {
        return const MobileThemeSettingsPage();
      }
    }

    return buildThemePage();
  }
}
