import 'package:flutter/material.dart';

class Responsivity extends StatelessWidget {
  const Responsivity({super.key});

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 560;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1200 &&
      MediaQuery.of(context).size.width >= 560;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
