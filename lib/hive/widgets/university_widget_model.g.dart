// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'university_widget_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UniversityAdapter extends TypeAdapter<University> {
  @override
  final int typeId = 11;

  @override
  University read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return University(
      fields[0] as String,
      fields[1] as String,
      (fields[2] as HiveList?)?.castHiveList(),
    );
  }

  @override
  void write(BinaryWriter writer, University obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.location)
      ..writeByte(2)
      ..write(obj.students);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UniversityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class StudentsAdapter extends TypeAdapter<Students> {
  @override
  final int typeId = 12;

  @override
  Students read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Students(
      fields[0] as String,
      fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Students obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StudentsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
