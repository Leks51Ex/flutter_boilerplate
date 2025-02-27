// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_theme_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppThemeDtoAdapter extends TypeAdapter<AppThemeDto> {
  @override
  final int typeId = 2;

  @override
  AppThemeDto read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return AppThemeDto.system;
      case 1:
        return AppThemeDto.light;
      case 2:
        return AppThemeDto.dark;
      default:
        return AppThemeDto.system;
    }
  }

  @override
  void write(BinaryWriter writer, AppThemeDto obj) {
    switch (obj) {
      case AppThemeDto.system:
        writer.writeByte(0);
        break;
      case AppThemeDto.light:
        writer.writeByte(1);
        break;
      case AppThemeDto.dark:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppThemeDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
