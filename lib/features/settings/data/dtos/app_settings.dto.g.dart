// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings.dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppSettingsDtoAdapter extends TypeAdapter<AppSettingsDto> {
  @override
  final int typeId = 1;

  @override
  AppSettingsDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppSettingsDto(
      fields[0] as AppThemeDto,
      fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AppSettingsDto obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.mode)
      ..writeByte(1)
      ..write(obj.code);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppSettingsDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
