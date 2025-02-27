//Test page will be removed
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/app_colors.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme_manager.dart';

@RoutePage()
class TestSecondPage extends StatelessWidget {
  const TestSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AppColors? appColors = Theme.of(context).extension<AppColors>();
    return Scaffold(
      body: Container(
          width: 300,
          height: 300,
          color: appColors!.background,
          child: Text('Second page')),
    );
  }
}
