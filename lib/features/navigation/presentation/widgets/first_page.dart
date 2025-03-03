//Test page will be removed
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/app_colors.dart';

@RoutePage()
class TestFirstPage extends StatelessWidget {
  const TestFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AppColors? appColors = Theme.of(context).extension<AppColors>();
    return Scaffold(
      body: Container(
          width: 300,
          height: 300,
          color: appColors!.background,
          child: Text('first page')),
    );
  }
}
