import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/di/di.dart';
import 'package:flutter_boilerplate/features/app/presentation/wm/app_iwm.dart';
import 'package:flutter_boilerplate/common/app_colors.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme/theme_manager.dart';
import 'package:provider/provider.dart';

class App extends ElementaryWidget<AppIWm> {
  const App(super.wmFactory, {super.key});

  @override
  Widget build(AppIWm wm) {
    return ChangeNotifierProvider<ThemeManager>.value(
      value: sl<ThemeManager>(),
      child: ValueListenableBuilder<AppColors>(
          valueListenable: wm.colors,
          builder: (BuildContext context, AppColors colors, Widget? child) {
            return Consumer<ThemeManager>(builder: (
              BuildContext context,
              ThemeManager themeManager,
              Widget? child,
            ) {
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                routerConfig: wm.routerConfig,
                theme: themeManager.currentTheme,
              );
            });
          }),
    );
  }
}
