import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/features/app/presentation/models/app_model.dart';
import 'package:flutter_boilerplate/features/app/presentation/widgets/app.dart';
import 'package:flutter_boilerplate/features/app/presentation/wm/app_iwm.dart';
import 'package:flutter_boilerplate/features/navigation/domain/entities/router.dart';

AppWm appWmFactory(BuildContext context) {
  final AppModel model = AppModel();

  return AppWm(model);
}

class AppWm extends WidgetModel<App, AppModel> implements AppIWm {
  final AppRouter _router;

  AppWm(super.model) : _router = AppRouter();

  /* ----------------------- General application router ----------------------- */

  @override
  RouterConfig<Object> get routerConfig => _router.config();

  /* ---------------------------- init widget model --------------------------- */

  @override
  void initWidgetModel() {
    // TODO: implement initWidgetModel
    super.initWidgetModel();
  }
}
