import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/di/di.dart';
import 'package:flutter_boilerplate/env/environment.dart';
import 'package:flutter_boilerplate/features/app/presentation/widgets/app/app.dart';
import 'package:flutter_boilerplate/features/app/presentation/wm/app_settings.wm.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

void main() async {
/* ----------------------------- Flutter related ---------------------------- */

  WidgetsFlutterBinding.ensureInitialized();

/* ------------------------------ Hive instance ----------------------------- */
  HiveInterface hive = Hive;
  // Get default documents directory
  Directory appDocs = await getApplicationDocumentsDirectory();
  final String hiveFolder = path.join(appDocs.absolute.path, 'circon');
  // Init hive with documents directory path
  hive.init(hiveFolder);
/* --------------------------- Setup dependencies --------------------------- */

/* ------------------------------- Environment ------------------------------ */
  await setupDiContainer(hive);

  const String environment = String.fromEnvironment('STAGING');

  print('isStaging: ${Environment().isstaging}');

  sl<Environment>().initConfig(environment);
  switch (sl<Environment>().which) {
    case Environment.local:
    case Environment.staging:
    case Environment.dev:
  }

/* ----------------------------- Flutter related ---------------------------- */
  WidgetsFlutterBinding.ensureInitialized();

  /* ----------------------------- CommandHandlers ---------------------------- */

  /* ---------------------------------- Sagas --------------------------------- */

/* ----------------------------------- Run ---------------------------------- */
  runApp(const App(defaultAppThemeWmFactory));
/* ----------------------------------Logging ---------------------------------- */
}
