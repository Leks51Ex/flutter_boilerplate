import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/app_colors.dart';

abstract interface class AppIWm implements IWidgetModel {
  ValueListenable<String> get languageCode;
  ValueListenable<AppColors> get colors;
  RouterConfig<Object> get routerConfig;
  List<Locale> get supportedLocales;
  List<LocalizationsDelegate<dynamic>> get localizationDelegates;
}
