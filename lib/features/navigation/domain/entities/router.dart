import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/features/navigation/presentation/widgets/first_page.dart';
import 'package:flutter_boilerplate/features/navigation/presentation/widgets/second_page.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        CustomRoute(
          page: TestFirstRoute.page,
          path: '/main',
          initial: true,
          transitionsBuilder: (_, __, ___, Widget child) => child,
          durationInMilliseconds: 0,
          reverseDurationInMilliseconds: 0,
        ),
        CustomRoute(
          page: TestSecondRoute.page,
          path: '/second',
          transitionsBuilder: (_, __, ___, Widget child) => child,
          durationInMilliseconds: 0,
          reverseDurationInMilliseconds: 0,
        )
      ];
}
