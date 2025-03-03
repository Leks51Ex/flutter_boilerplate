import 'package:equatable/equatable.dart';
import 'package:flutter_boilerplate/common/hive_types.id.dart';
import 'package:flutter_boilerplate/features/settings/data/dtos/app_theme.dto.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme/app_theme.dart';
import 'package:hive/hive.dart';

part 'app_settings.dto.g.dart';

@HiveType(typeId: appSettingsTypeId)
class AppSettingsDto extends Equatable {
  @HiveField(0)
  final AppThemeDto mode;

  @HiveField(1)
  final String code;

  const AppSettingsDto(this.mode, this.code);

  factory AppSettingsDto.initial() {
    return const AppSettingsDto(AppThemeDto.system, 'en');
  }

  factory AppSettingsDto.fromEntity(AppSettings entity) {
    return AppSettingsDto(fromRealMode(entity.mode), 'en');
  }

  AppSettingsDto copyWith({AppThemeDto? themeMode, String? code}) =>
      AppSettingsDto(
        themeMode ?? mode,
        code ?? this.code,
      );

  @override
  List<Object?> get props => <Object?>[mode];
}
