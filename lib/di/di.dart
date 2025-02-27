import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/features/settings/domain/contracts/settings_repository.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/app_colors.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

final GetIt sl = GetIt.instance;

Future<void> setupDiContainer(HiveInterface hive) async {
  /* ---------------------------------- Hive ---------------------------------- */
  sl.registerSingleton<HiveInterface>(hive);

  /* -------------------------------- Settings -------------------------------- */
  //  sl.registerLazySingleton<SettingsRepository>(
  //   () {
  //     final HiveSettingsRepository repo = HiveSettingsRepository(hive);
  //     repo.registerAdapters();
  //     return repo;
  //   },
  // );

  /* ------------------------------ ThemeSettings ----------------------------- */

  sl.registerLazySingleton<ThemeManager>(() {
    return ThemeManager(
      lightTheme: ThemeData(
        extensions: const <ThemeExtension<dynamic>>[
          AppColors.light,
        ],
      ),
      darkTheme: ThemeData(
        extensions: const <ThemeExtension<dynamic>>[
          AppColors.dark,
        ],
      ),
    );
  });
}
