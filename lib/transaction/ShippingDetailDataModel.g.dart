// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ShippingDetailDataModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ShippingDetailDataModelAdapter
    extends TypeAdapter<ShippingDetailDataModel> {
  @override
  final int typeId = 12;

  @override
  ShippingDetailDataModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ShippingDetailDataModel(
      deliveredBy: fields[0] as String?,
      vehicleId: fields[1] as String?,
      vehicleName: fields[2] as String?,
      description: fields[3] as String?,
      driverName: fields[4] as String?,
      driverPhone: fields[5] as String?,
      shippingCompany: fields[6] as String?,
      shippingCompanyTrn: fields[7] as String?,
      billingAddress: fields[8] as String?,
      capacity: fields[9] as String?,
      ratePerKm: fields[10] as double?,
      shippingCharges: fields[11] as double?,
      inTime: fields[12] as DateTime?,
      outTime: fields[13] as DateTime?,
      unloadedWeight: fields[14] as double?,
      loadedWeight: fields[15] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, ShippingDetailDataModel obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.deliveredBy)
      ..writeByte(1)
      ..write(obj.vehicleId)
      ..writeByte(2)
      ..write(obj.vehicleName)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.driverName)
      ..writeByte(5)
      ..write(obj.driverPhone)
      ..writeByte(6)
      ..write(obj.shippingCompany)
      ..writeByte(7)
      ..write(obj.shippingCompanyTrn)
      ..writeByte(8)
      ..write(obj.billingAddress)
      ..writeByte(9)
      ..write(obj.capacity)
      ..writeByte(10)
      ..write(obj.ratePerKm)
      ..writeByte(11)
      ..write(obj.shippingCharges)
      ..writeByte(12)
      ..write(obj.inTime)
      ..writeByte(13)
      ..write(obj.outTime)
      ..writeByte(14)
      ..write(obj.unloadedWeight)
      ..writeByte(15)
      ..write(obj.loadedWeight);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ShippingDetailDataModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
