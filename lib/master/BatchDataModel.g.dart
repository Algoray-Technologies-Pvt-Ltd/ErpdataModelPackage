// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BatchDataModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BatchDataModelAdapter extends TypeAdapter<BatchDataModel> {
  @override
  final int typeId = 1;

  @override
  BatchDataModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BatchDataModel(
      itemID: fields[0] as String?,
      itemReqId: fields[1] as String?,
      SKUID: fields[2] as String?,
      batchNo: fields[3] as String?,
      batchName: fields[4] as String?,
      serialNoFrom: fields[5] as String?,
      serialNoTo: fields[6] as String?,
      serialSuffix: fields[7] as String?,
      serialPrefix: fields[8] as String?,
      VoucherNo: fields[9] as String?,
      VoucherType: fields[10] as String?,
      VoucherPrefix: fields[11] as String?,
      RefNo: fields[12] as String?,
      RefType: fields[13] as String?,
      RefPrefix: fields[14] as String?,
      voucherDate: fields[15] as DateTime?,
      MfgDate: fields[16] as DateTime?,
      ExpiryDate: fields[17] as DateTime?,
      shelfLife: fields[18] as String?,
      purchaseCost: fields[19] as double?,
      sellingPrice: fields[20] as double?,
      crQty: fields[21] as double?,
      drQty: fields[22] as double?,
      uom: fields[23] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, BatchDataModel obj) {
    writer
      ..writeByte(24)
      ..writeByte(0)
      ..write(obj.itemID)
      ..writeByte(1)
      ..write(obj.itemReqId)
      ..writeByte(2)
      ..write(obj.SKUID)
      ..writeByte(3)
      ..write(obj.batchNo)
      ..writeByte(4)
      ..write(obj.batchName)
      ..writeByte(5)
      ..write(obj.serialNoFrom)
      ..writeByte(6)
      ..write(obj.serialNoTo)
      ..writeByte(7)
      ..write(obj.serialSuffix)
      ..writeByte(8)
      ..write(obj.serialPrefix)
      ..writeByte(9)
      ..write(obj.VoucherNo)
      ..writeByte(10)
      ..write(obj.VoucherType)
      ..writeByte(11)
      ..write(obj.VoucherPrefix)
      ..writeByte(12)
      ..write(obj.RefNo)
      ..writeByte(13)
      ..write(obj.RefType)
      ..writeByte(14)
      ..write(obj.RefPrefix)
      ..writeByte(15)
      ..write(obj.voucherDate)
      ..writeByte(16)
      ..write(obj.MfgDate)
      ..writeByte(17)
      ..write(obj.ExpiryDate)
      ..writeByte(18)
      ..write(obj.shelfLife)
      ..writeByte(19)
      ..write(obj.purchaseCost)
      ..writeByte(20)
      ..write(obj.sellingPrice)
      ..writeByte(21)
      ..write(obj.crQty)
      ..writeByte(22)
      ..write(obj.drQty)
      ..writeByte(23)
      ..write(obj.uom);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BatchDataModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
