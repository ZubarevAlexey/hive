// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_widget_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CatAdapter extends TypeAdapter<Cat> {
  @override
  final int typeId = 9;

  @override
  Cat read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Cat(
      fields[0] as String,
      fields[1] as int,
      (fields[2] as HiveList?)?.castHiveList(),
    );
  }

  @override
  void write(BinaryWriter writer, Cat obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.age)
      ..writeByte(2)
      ..write(obj.cats);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CatAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class KittensAdapter extends TypeAdapter<Kittens> {
  @override
  final int typeId = 10;

  @override
  Kittens read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Kittens(
      fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Kittens obj) {
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
      other is KittensAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
