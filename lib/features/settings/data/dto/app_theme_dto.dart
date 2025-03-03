import 'package:flutter_boilerplate/common/hive_types_id.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme/theme_modes.dart';
import 'package:hive/hive.dart';

part 'app_theme_dto.g.dart';

@HiveType(typeId: appThemeTypeId)
enum AppThemeDto {
  @HiveField(0)
  system,
  @HiveField(1)
  light,
  @HiveField(2)
  dark
}

AppThemeDto fromRealMode(AppThemeMode mode) {
  return switch (mode) {
    AppThemeMode.dark => AppThemeDto.dark,
    AppThemeMode.light => AppThemeDto.light,
    AppThemeMode.system => AppThemeDto.system
  };
}

AppThemeMode toRealMode(AppThemeDto dto) {
  return switch (dto) {
    AppThemeDto.dark => AppThemeMode.dark,
    AppThemeDto.light => AppThemeMode.light,
    AppThemeDto.system => AppThemeMode.system
  };
}
