import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/app_colors.dart';

abstract interface class AppIWm implements IWidgetModel {
  ValueListenable<String> get languageCode;
  ValueListenable<AppColors> get colors;
  RouterConfig<Object> get routerConfig;
}
