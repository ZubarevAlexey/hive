// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'one_time_widget_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserInfoAdapter extends TypeAdapter<UserInfo> {
  @override
  final int typeId = 5;

  @override
  UserInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserInfo(
      fields[0] as String,
      fields[1] as int,
      (fields[2] as HiveList?)?.castHiveList(),
    );
  }

  @override
  void write(BinaryWriter writer, UserInfo obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.age)
      ..writeByte(2)
      ..write(obj.company);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CompanyNewAdapter extends TypeAdapter<CompanyNew> {
  @override
  final int typeId = 6;

  @override
  CompanyNew read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CompanyNew(
      fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CompanyNew obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CompanyNewAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
