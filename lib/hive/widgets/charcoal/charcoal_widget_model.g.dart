// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charcoal_widget_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CharcoalBoxAdapter extends TypeAdapter<CharcoalBox> {
  @override
  final int typeId = 13;

  @override
  CharcoalBox read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CharcoalBox(
      fields[0] as String,
      fields[1] as int,
      (fields[2] as HiveList).castHiveList(),
    );
  }

  @override
  void write(BinaryWriter writer, CharcoalBox obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.size)
      ..writeByte(2)
      ..write(obj.item);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CharcoalBoxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CharcoalItemAdapter extends TypeAdapter<CharcoalItem> {
  @override
  final int typeId = 14;

  @override
  CharcoalItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CharcoalItem(
      fields[0] as String,
      fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, CharcoalItem obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.price);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CharcoalItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
