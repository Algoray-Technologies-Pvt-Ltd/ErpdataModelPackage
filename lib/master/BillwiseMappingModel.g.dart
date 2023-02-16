// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BillwiseMappingModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BillwiseMappingModelAdapter extends TypeAdapter<BillwiseMappingModel> {
  @override
  final int typeId = 2;

  @override
  BillwiseMappingModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BillwiseMappingModel(
      VoucherPrefix: fields[0] as String?,
      VoucherType: fields[1] as String?,
      VoucherNo: fields[2] as String?,
      LedgerID: fields[3] as String?,
      RefPrefix: fields[4] as String?,
      RefType: fields[5] as String?,
      RefVoucherNo: fields[6] as String?,
      MethodOfAdjustment: fields[7] as String?,
      VoucherDate: fields[10] as DateTime?,
      DueDate: fields[11] as DateTime?,
      Amount: fields[12] as double?,
      selectedAmount: fields[13] as double?,
      mapFlag: fields[14] as bool?,
      pos: fields[15] as int?,
      salesManId: fields[16] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, BillwiseMappingModel obj) {
    writer
      ..writeByte(17)
      ..writeByte(0)
      ..write(obj.VoucherPrefix)
      ..writeByte(1)
      ..write(obj.VoucherType)
      ..writeByte(2)
      ..write(obj.VoucherNo)
      ..writeByte(3)
      ..write(obj.LedgerID)
      ..writeByte(4)
      ..write(obj.RefPrefix)
      ..writeByte(5)
      ..write(obj.RefType)
      ..writeByte(6)
      ..write(obj.RefVoucherNo)
      ..writeByte(7)
      ..write(obj.MethodOfAdjustment)
      ..writeByte(8)
      ..write(obj.DebitAmount)
      ..writeByte(9)
      ..write(obj.CreditAmount)
      ..writeByte(10)
      ..write(obj.VoucherDate)
      ..writeByte(11)
      ..write(obj.DueDate)
      ..writeByte(12)
      ..write(obj.Amount)
      ..writeByte(13)
      ..write(obj.selectedAmount)
      ..writeByte(14)
      ..write(obj.mapFlag)
      ..writeByte(15)
      ..write(obj.pos)
      ..writeByte(16)
      ..write(obj.salesManId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BillwiseMappingModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
