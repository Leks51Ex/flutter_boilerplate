import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_boilerplate/common/app_colors.dart';

abstract interface class AppWm implements IWidgetModel {
  ValueListenable<AppColors> get colors;

  ValueListenable<String> get languageCode;

  RouterConfig<Object> get routerConfig;

  List<Locale> get supportedLocales;

  List<LocalizationsDelegate<dynamic>> get localizationDelegates;
}
