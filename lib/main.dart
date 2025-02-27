import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/di/di.dart';
import 'package:flutter_boilerplate/features/app/presentation/widgets/app.dart';
import 'package:flutter_boilerplate/features/app/presentation/wm/app_wm.dart';
import 'package:hive/hive.dart';

void main() async {
  /* ----------------------------- Flutter related ---------------------------- */

  WidgetsFlutterBinding.ensureInitialized();

  /* ----------------------------- Hive instances ----------------------------- */
  HiveInterface hive = Hive;

  // TODO: Initialize Hive instances here

  await setupDiContainer(hive);

  /* ------------------------------- Environment ------------------------------ */

  const String environment = String.fromEnvironment('LOCAL');

  runApp(App(appWmFactory));
}

/* ----------------------------------- Run app ---------------------------------- */
