//Test page will be removed
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Main page'),
    );
  }
}
