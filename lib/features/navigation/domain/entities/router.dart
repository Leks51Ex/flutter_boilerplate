import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/features/navigation/presentation/widgets/test_page.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        CustomRoute(
          page: TestRoute.page,
          path: '/main',
          initial: true,
          transitionsBuilder: (_, __, ___, Widget child) => child,
          durationInMilliseconds: 0,
          reverseDurationInMilliseconds: 0,
        )
      ];
}
