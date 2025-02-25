import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

final GetIt sl = GetIt.instance;

Future<void> setupDiContainer(HiveInterface hive) async {
  /* ---------------------------------- Hive ---------------------------------- */
  sl.registerSingleton<HiveInterface>(hive);
}
