// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CompoundItemDataModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CompoundItemDataModelAdapter extends TypeAdapter<CompoundItemDataModel> {
  @override
  final int typeId = 5;

  @override
  CompoundItemDataModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CompoundItemDataModel(
      BaseItem: fields[0] as InventoryItemHive,
    );
  }

  @override
  void write(BinaryWriter writer, CompoundItemDataModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.BaseItem);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CompoundItemDataModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
