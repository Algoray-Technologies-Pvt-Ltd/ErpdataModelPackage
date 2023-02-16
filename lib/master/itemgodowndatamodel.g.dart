// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itemgodowndatamodel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ItemGodownDataModelAdapter extends TypeAdapter<ItemGodownDataModel> {
  @override
  final int typeId = 15;

  @override
  ItemGodownDataModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ItemGodownDataModel(
      fromGodown: fields[0] as String?,
      toGodown: fields[1] as String?,
      crQty: fields[2] as double?,
      drQty: fields[3] as double?,
      enteredQty: fields[4] as double?,
      crAmount: fields[5] as double?,
      drAmount: fields[6] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, ItemGodownDataModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.fromGodown)
      ..writeByte(1)
      ..write(obj.toGodown)
      ..writeByte(2)
      ..write(obj.crQty)
      ..writeByte(3)
      ..write(obj.drQty)
      ..writeByte(4)
      ..write(obj.enteredQty)
      ..writeByte(5)
      ..write(obj.crAmount)
      ..writeByte(6)
      ..write(obj.drAmount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemGodownDataModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
