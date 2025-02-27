import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/features/app/presentation/wm/app_iwm.dart';

class App extends ElementaryWidget<AppIWm> {
  const App(super.wmFactory, {super.key});

  @override
  Widget build(AppIWm wm) {
    return MaterialApp.router(routerConfig: wm.routerConfig);
  }
}
