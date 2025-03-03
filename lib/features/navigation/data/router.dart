import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/ui/pages/settings/theme_settings_page/theme_settings_page.dart';
part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        CustomRoute(
          page: ThemeSettingsRoute.page,
          initial: true,
          path: '/theme',
          transitionsBuilder: (_, __, ___, Widget child) => child,
          durationInMilliseconds: 0,
          reverseDurationInMilliseconds: 0,
        ),
      ];
}
