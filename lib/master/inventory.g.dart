// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InventoryItemDataAdapter extends TypeAdapter<InventoryItemData> {
  @override
  final int typeId = 14;

  @override
  InventoryItemData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return InventoryItemData(
      ItemNameArabic: fields[1] as String?,
      stdRate: fields[2] as double?,
      rate: fields[3] as double?,
      priceLastPurchase: fields[4] as double?,
      discount: fields[29] as double?,
      discountinAmount: fields[30] as double?,
      discountPercentage: fields[31] as double?,
      subtotal: fields[32] as double?,
      grossTotal: fields[33] as double?,
      grandTotal: fields[34] as double?,
      moq: fields[5] as double?,
      ItemReqUuid: fields[35] as String?,
      listId: fields[36] as int?,
      fromGodownID: fields[37] as String?,
      toGodownID: fields[38] as String?,
      godownList: (fields[39] as List?)?.cast<ItemGodownDataModel>(),
      batchList: (fields[40] as List?)?.cast<BatchDataModel>(),
      PriceLevel: fields[41] as String?,
      defaultSalesLedgerID: fields[6] as String?,
      defaultPurchaseLedgerID: fields[7] as String?,
      ProjectID: fields[42] as String?,
      brandName: fields[8] as String?,
      taxRate: fields[9] as double?,
      taxAmount: fields[43] as double?,
      defaultUOMID: fields[10] as String?,
      priceListID: fields[44] as String?,
      priceListName: fields[45] as String?,
      createdBy: fields[11] as String?,
      bomList: (fields[12] as List?)?.cast<BOMDataModel>(),
      length: fields[13] as double?,
      IsCompoundItem: fields[14] as bool?,
      isSerailNumbered: fields[15] as bool?,
      isBatchProcessed: fields[16] as bool?,
      removeItem: fields[17] as bool?,
      isService: fields[18] as bool?,
      isProductionItem: fields[19] as bool?,
      setPriceBatchwise: fields[20] as bool?,
      isPerishable: fields[21] as bool?,
      itemPriceEditted: fields[46] as bool?,
      itemProductionStatus: fields[47] as int?,
      itemVoucherStatus: fields[48] as int?,
      DefaultInputTaxLedgerID: fields[22] as String?,
      DefaultOutputTaxLedgerID: fields[23] as String?,
      DefaultSalesReturnLedgerID: fields[24] as String?,
      DefaultPurchaseReturnLedgerID: fields[25] as String?,
      TaxClassID: fields[28] as int?,
      TechnicianID: fields[49] as int?,
      drQty: fields[50] as double?,
      crQty: fields[51] as double?,
      consumedQty: fields[52] as double?,
      orderedQty: fields[53] as double?,
      quantity: fields[54] as double?,
      maxQuantity: fields[55] as double?,
      calculatedQty: fields[56] as double?,
      requestQty: fields[57] as double?,
      prevQty: fields[58] as double?,
      currQty: fields[59] as double?,
      billedQty: fields[60] as double?,
      actualQty: fields[61] as double?,
      fromExternal: fields[62] as bool?,
      action: fields[63] as int?,
      orderCompletedDate: fields[64] as DateTime?,
      manufactureDate: fields[65] as DateTime?,
      expiry: fields[66] as DateTime?,
      location: fields[26] as String?,
      weight: fields[27] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, InventoryItemData obj) {
    writer
      ..writeByte(66)
      ..writeByte(1)
      ..write(obj.ItemNameArabic)
      ..writeByte(2)
      ..write(obj.stdRate)
      ..writeByte(3)
      ..write(obj.rate)
      ..writeByte(4)
      ..write(obj.priceLastPurchase)
      ..writeByte(5)
      ..write(obj.moq)
      ..writeByte(6)
      ..write(obj.defaultSalesLedgerID)
      ..writeByte(7)
      ..write(obj.defaultPurchaseLedgerID)
      ..writeByte(8)
      ..write(obj.brandName)
      ..writeByte(9)
      ..write(obj.taxRate)
      ..writeByte(10)
      ..write(obj.defaultUOMID)
      ..writeByte(11)
      ..write(obj.createdBy)
      ..writeByte(12)
      ..write(obj.bomList)
      ..writeByte(13)
      ..write(obj.length)
      ..writeByte(14)
      ..write(obj.IsCompoundItem)
      ..writeByte(15)
      ..write(obj.isSerailNumbered)
      ..writeByte(16)
      ..write(obj.isBatchProcessed)
      ..writeByte(17)
      ..write(obj.removeItem)
      ..writeByte(18)
      ..write(obj.isService)
      ..writeByte(19)
      ..write(obj.isProductionItem)
      ..writeByte(20)
      ..write(obj.setPriceBatchwise)
      ..writeByte(21)
      ..write(obj.isPerishable)
      ..writeByte(22)
      ..write(obj.DefaultInputTaxLedgerID)
      ..writeByte(23)
      ..write(obj.DefaultOutputTaxLedgerID)
      ..writeByte(24)
      ..write(obj.DefaultSalesReturnLedgerID)
      ..writeByte(25)
      ..write(obj.DefaultPurchaseReturnLedgerID)
      ..writeByte(26)
      ..write(obj.location)
      ..writeByte(27)
      ..write(obj.weight)
      ..writeByte(28)
      ..write(obj.TaxClassID)
      ..writeByte(29)
      ..write(obj.discount)
      ..writeByte(30)
      ..write(obj.discountinAmount)
      ..writeByte(31)
      ..write(obj.discountPercentage)
      ..writeByte(32)
      ..write(obj.subtotal)
      ..writeByte(33)
      ..write(obj.grossTotal)
      ..writeByte(34)
      ..write(obj.grandTotal)
      ..writeByte(35)
      ..write(obj.ItemReqUuid)
      ..writeByte(36)
      ..write(obj.listId)
      ..writeByte(37)
      ..write(obj.fromGodownID)
      ..writeByte(38)
      ..write(obj.toGodownID)
      ..writeByte(39)
      ..write(obj.godownList)
      ..writeByte(40)
      ..write(obj.batchList)
      ..writeByte(41)
      ..write(obj.PriceLevel)
      ..writeByte(42)
      ..write(obj.ProjectID)
      ..writeByte(43)
      ..write(obj.taxAmount)
      ..writeByte(44)
      ..write(obj.priceListID)
      ..writeByte(45)
      ..write(obj.priceListName)
      ..writeByte(46)
      ..write(obj.itemPriceEditted)
      ..writeByte(47)
      ..write(obj.itemProductionStatus)
      ..writeByte(48)
      ..write(obj.itemVoucherStatus)
      ..writeByte(49)
      ..write(obj.TechnicianID)
      ..writeByte(50)
      ..write(obj.drQty)
      ..writeByte(51)
      ..write(obj.crQty)
      ..writeByte(52)
      ..write(obj.consumedQty)
      ..writeByte(53)
      ..write(obj.orderedQty)
      ..writeByte(54)
      ..write(obj.quantity)
      ..writeByte(55)
      ..write(obj.maxQuantity)
      ..writeByte(56)
      ..write(obj.calculatedQty)
      ..writeByte(57)
      ..write(obj.requestQty)
      ..writeByte(58)
      ..write(obj.prevQty)
      ..writeByte(59)
      ..write(obj.currQty)
      ..writeByte(60)
      ..write(obj.billedQty)
      ..writeByte(61)
      ..write(obj.actualQty)
      ..writeByte(62)
      ..write(obj.fromExternal)
      ..writeByte(63)
      ..write(obj.action)
      ..writeByte(64)
      ..write(obj.orderCompletedDate)
      ..writeByte(65)
      ..write(obj.manufactureDate)
      ..writeByte(66)
      ..write(obj.expiry);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InventoryItemDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
