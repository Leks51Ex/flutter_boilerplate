import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/di/di.dart';
import 'package:flutter_boilerplate/features/app/presentation/widgets/app/app.wm.iface.dart';
import 'package:flutter_boilerplate/common/app_colors.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme/theme_manager.dart';
import 'package:provider/provider.dart';

class App extends ElementaryWidget<AppWm> {
  const App(super.wmFactory, {super.key});

  @override
  Widget build(AppWm wm) {
    return ChangeNotifierProvider<ThemeManager>.value(
      value: sl<ThemeManager>(),
      child: ValueListenableBuilder<AppColors>(
        valueListenable: wm.colors,
        builder: (BuildContext context, AppColors colors, Widget? child) {
          return Consumer<ThemeManager>(
            builder: (
              BuildContext context,
              ThemeManager themeManager,
              Widget? child,
            ) {
              return MaterialApp.router(
                localizationsDelegates: wm.localizationDelegates,
                supportedLocales: wm.supportedLocales,
                locale: Locale(wm.languageCode.value),
                theme: themeManager.currentTheme,
                debugShowCheckedModeBanner: false,
                routerConfig: wm.routerConfig,
              );
            },
          );
        },
      ),
    );
  }
}
