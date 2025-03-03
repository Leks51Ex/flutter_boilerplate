import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/di/di.dart';
import 'package:flutter_boilerplate/features/app/presentation/widgets/app.dart';
import 'package:flutter_boilerplate/features/app/presentation/wm/app_wm.dart';
import 'package:hive/hive.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

void main() async {
  /* ----------------------------- Flutter related ---------------------------- */
  HiveInterface hive = Hive;
  WidgetsFlutterBinding.ensureInitialized();
  Directory appDocs = await getApplicationDocumentsDirectory();
  final String hiveFolder = path.join(appDocs.absolute.path, 'circon');
  hive.init(hiveFolder);

  /* ----------------------------- Hive instances ----------------------------- */

  await setupDiContainer(hive);

  /* ------------------------------- Environment ------------------------------ */

  const String environment = String.fromEnvironment('LOCAL');

  runApp(App(appWmFactory));
}

/* ----------------------------------- Run app ---------------------------------- */
