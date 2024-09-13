// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dog_widget_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DogAdapter extends TypeAdapter<Dog> {
  @override
  final int typeId = 7;

  @override
  Dog read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Dog(
      fields[0] as String,
      fields[1] as int,
      (fields[2] as HiveList?)?.castHiveList(),
    );
  }

  @override
  void write(BinaryWriter writer, Dog obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.age)
      ..writeByte(2)
      ..write(obj.puppys);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DogAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PuppyAdapter extends TypeAdapter<Puppy> {
  @override
  final int typeId = 8;

  @override
  Puppy read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Puppy(
      fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Puppy obj) {
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
      other is PuppyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
