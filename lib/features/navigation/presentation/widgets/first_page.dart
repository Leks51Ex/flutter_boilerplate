//Test page will be removed
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TestFirstPage extends StatelessWidget {
  const TestFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('First page'),
    );
  }
}
