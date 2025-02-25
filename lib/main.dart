import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/di/di.dart';
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

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Container(color: Colors.grey, child: Text('Start'))),
    );
  }
}
