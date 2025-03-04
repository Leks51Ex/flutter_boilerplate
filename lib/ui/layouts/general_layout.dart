import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/app_colors.dart';

class GeneralLayout extends StatelessWidget {
  final Widget section;
  const GeneralLayout({
    super.key,
    required this.section,
  });

  @override
  Widget build(BuildContext context) {
    final AppColors? appColors = Theme.of(context).extension<AppColors>();
    return Scaffold(
      backgroundColor: appColors!.background,
      body: section,
    );
  }
}
