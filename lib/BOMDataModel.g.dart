// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BOMDataModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BOMDataModelAdapter extends TypeAdapter<BOMDataModel> {
  @override
  final int typeId = 3;

  @override
  BOMDataModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BOMDataModel(
      SalesItem: fields[0] as String?,
      SalesItemQty: fields[1] as double?,
      PurchaseItem: fields[2] as String?,
      PurchaseItemName: fields[3] as String?,
      PurchaseItemQty: fields[4] as double?,
      PurchaseUom: fields[5] as String?,
      conValue: fields[6] as double?,
      purchaseItemSection: fields[7] as String?,
      RouteID: fields[8] as String?,
      pRate: fields[9] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, BOMDataModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.SalesItem)
      ..writeByte(1)
      ..write(obj.SalesItemQty)
      ..writeByte(2)
      ..write(obj.PurchaseItem)
      ..writeByte(3)
      ..write(obj.PurchaseItemName)
      ..writeByte(4)
      ..write(obj.PurchaseItemQty)
      ..writeByte(5)
      ..write(obj.PurchaseUom)
      ..writeByte(6)
      ..write(obj.conValue)
      ..writeByte(7)
      ..write(obj.purchaseItemSection)
      ..writeByte(8)
      ..write(obj.RouteID)
      ..writeByte(9)
      ..write(obj.pRate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BOMDataModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
