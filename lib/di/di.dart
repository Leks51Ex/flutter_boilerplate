import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/features/settings/data/repositories/hive_settings_repository.dart';
import 'package:flutter_boilerplate/features/settings/domain/contracts/settings_repository.dart';
import 'package:flutter_boilerplate/common/app_colors.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme/theme_manager.dart';
import 'package:flutter_boilerplate/features/settings/presentation/logic/cubit/settings_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:flutter_boilerplate/l10n/generated/app_localizations.g.dart';
import 'package:flutter_boilerplate/l10n/generated/app_localizations_en.g.dart';

final GetIt sl = GetIt.instance;

Future<void> setupDiContainer(HiveInterface hive) async {
  /* ---------------------------------- Hive ---------------------------------- */
  sl.registerSingleton<HiveInterface>(hive);

  /* -------------------------------- Settings -------------------------------- */
  sl.registerLazySingleton<SettingsRepository>(
    () {
      final HiveSettingsRepository repo = HiveSettingsRepository(hive);
      repo.registerAdapters();
      return repo;
    },
  );

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
  /* ------------------------------ Localization Settings ----------------------------- */
  sl.registerFactoryParam<AppLocalizations, BuildContext, void>(
    (BuildContext context, _) {
      AppLocalizations? localization = AppLocalizations.of(context);
      if (localization == null) {
        return AppLocalizationsEn();
      }
      return localization;
    },
  );
  /* ----------------------------- Cubit settings ----------------------------- */

  sl.registerSingleton<SettingsCubit>(SettingsCubit());
}
