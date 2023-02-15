// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ChequeDetailModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChequeDetailModelAdapter extends TypeAdapter<ChequeDetailModel> {
  @override
  final int typeId = 4;

  @override
  ChequeDetailModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChequeDetailModel(
      id: fields[1] as String?,
      LedgerName: fields[2] as String?,
      LedgerID: fields[3] as String?,
      OurBankId: fields[4] as String?,
      BankID: fields[5] as String?,
      BankName: fields[6] as String?,
      TransactionType: fields[7] as String?,
      ChequeNo: fields[11] as String?,
      VoucherID: fields[12] as String?,
      VoucherType: fields[13] as String?,
      VoucherPrefix: fields[14] as String?,
      IssuedOn: fields[15] as DateTime?,
      Branch: fields[16] as String?,
      IFSC: fields[17] as String?,
      InstrumentDate: fields[18] as DateTime?,
      RefNumber: fields[19] as String?,
      reconciled: fields[20] as bool?,
      reconciledDate: fields[21] as DateTime?,
      isPresented: fields[22] as bool?,
      presentedOn: fields[23] as DateTime?,
      isCleared: fields[24] as bool?,
      clearedOn: fields[25] as DateTime?,
      isRejected: fields[26] as bool?,
      Narration: fields[27] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ChequeDetailModel obj) {
    writer
      ..writeByte(27)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.LedgerName)
      ..writeByte(3)
      ..write(obj.LedgerID)
      ..writeByte(4)
      ..write(obj.OurBankId)
      ..writeByte(5)
      ..write(obj.BankID)
      ..writeByte(6)
      ..write(obj.BankName)
      ..writeByte(7)
      ..write(obj.TransactionType)
      ..writeByte(8)
      ..write(obj.Amount)
      ..writeByte(9)
      ..write(obj.crAmount)
      ..writeByte(10)
      ..write(obj.drAmount)
      ..writeByte(11)
      ..write(obj.ChequeNo)
      ..writeByte(12)
      ..write(obj.VoucherID)
      ..writeByte(13)
      ..write(obj.VoucherType)
      ..writeByte(14)
      ..write(obj.VoucherPrefix)
      ..writeByte(15)
      ..write(obj.IssuedOn)
      ..writeByte(16)
      ..write(obj.Branch)
      ..writeByte(17)
      ..write(obj.IFSC)
      ..writeByte(18)
      ..write(obj.InstrumentDate)
      ..writeByte(19)
      ..write(obj.RefNumber)
      ..writeByte(20)
      ..write(obj.reconciled)
      ..writeByte(21)
      ..write(obj.reconciledDate)
      ..writeByte(22)
      ..write(obj.isPresented)
      ..writeByte(23)
      ..write(obj.presentedOn)
      ..writeByte(24)
      ..write(obj.isCleared)
      ..writeByte(25)
      ..write(obj.clearedOn)
      ..writeByte(26)
      ..write(obj.isRejected)
      ..writeByte(27)
      ..write(obj.Narration);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChequeDetailModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
