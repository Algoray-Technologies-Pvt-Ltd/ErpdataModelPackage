// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datamodelpackage.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GeneralVoucherDataModelAdapter
    extends TypeAdapter<GeneralVoucherDataModel> {
  @override
  final int typeId = 7;

  @override
  GeneralVoucherDataModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GeneralVoucherDataModel(
      DisplayVoucherNumber: fields[0] as String?,
      voucherNumber: fields[1] as String?,
      VoucherDate: fields[2] as DateTime?,
      VoucherPrefix: fields[3] as String?,
      invoiceNumber: fields[4] as String?,
      invoiceDate: fields[5] as DateTime?,
      DateCreated: fields[6] as DateTime?,
      timestamp: fields[7] as DateTime?,
      lastEditedDateTime: fields[8] as DateTime?,
      ledgerObject: fields[9] as LedgerMasterHiveModel?,
      InventoryItems: (fields[10] as List?)?.cast<CompoundItemDataModel>(),
      deletedItems: (fields[11] as List?)?.cast<InventoryItemHive>(),
      ledgersList: (fields[12] as List).cast<LedgerMasterHiveModel>(),
      narration: fields[13] as String?,
      priceListId: fields[14] as int?,
      priceListName: fields[15] as String?,
      discount: fields[16] as double?,
      discountPercent: fields[17] as double?,
      subTotal: fields[18] as double?,
      grossTotal: fields[19] as double?,
      discountinAmount: fields[20] as double?,
      grandTotal: fields[21] as double?,
      taxTotalAmount: fields[22] as double?,
      otherLedgersTotal: fields[23] as double?,
      cessAmount: fields[24] as double?,
      currencyConversionRate: fields[25] as double?,
      currency: fields[26] as String?,
      ProjectId: fields[27] as String?,
      AddedBy: fields[28] as String?,
      AddedById: fields[29] as int?,
      packedBy: fields[30] as int?,
      DeliveryDate: fields[31] as DateTime?,
      DeliveryTime: fields[32] as DateTime?,
      CompletionProbability: fields[33] as double?,
      CreditPeriod: fields[97] as int?,
      completedTimeStamp: fields[34] as DateTime?,
      RevisionNo: fields[35] as int?,
      ConvertedToSalesOrder: fields[36] as String?,
      QuotationPrepared: fields[37] as bool?,
      QuotationDropped: fields[38] as bool?,
      QuotationDroppedReason: fields[39] as String?,
      SalesmanID: fields[40] as int?,
      TermsAndConditionsID: fields[41] as String?,
      RequirementVoucherNo: fields[42] as String?,
      Contact: fields[43] as ContactsDataModel?,
      LPO: fields[44] as String?,
      BillingName: fields[45] as String?,
      prevTransVouchers: fields[46] as String?,
      roundOff: fields[47] as double?,
      status: fields[48] as int?,
      voucherType: fields[49] as String?,
      isIGST: fields[50] as bool?,
      ManagerApprovalStatus: fields[51] as bool?,
      ClientApprovalStatus: fields[52] as bool?,
      NoOfCopies: fields[53] as int?,
      ModeOfService: fields[54] as int?,
      quantityTotal: fields[55] as double?,
      BalanceAmount: fields[56] as double?,
      PaidAmount: fields[57] as double?,
      reference: fields[58] as String?,
      Location: fields[59] as String?,
      POCName: fields[60] as String?,
      POCEmail: fields[61] as String?,
      POCPhone: fields[62] as String?,
      kotNumber: fields[63] as String?,
      BillSplit: fields[64] as bool?,
      paymentSplit: fields[65] as bool?,
      advanceCash: fields[66] as double?,
      balance: fields[67] as double?,
      fromGodownName: fields[68] as String?,
      toGodownName: fields[69] as String?,
      fromGodownID: fields[70] as String?,
      toGodownID: fields[71] as String?,
      mapList: (fields[72] as List?)?.cast<BillwiseMappingModel>(),
      chequeEntry: fields[73] as ChequeDetailModel?,
      isReconciled: fields[74] as bool?,
      reconciledOn: fields[75] as DateTime?,
      crTotal: fields[76] as double?,
      drTotal: fields[77] as double?,
      ledgersTotal: fields[78] as double?,
      fromExternal: fields[79] as bool?,
      sendFlag: fields[80] as bool?,
      voucherToExport: fields[81] as bool?,
      TransactionId: fields[82] as String?,
      action: fields[83] as int?,
      CustomerExpectingDate: fields[84] as DateTime?,
      HashTags: (fields[85] as List?)?.cast<String>(),
      purchaseLedger: fields[86] as LedgerMasterHiveModel?,
      LRNO: fields[87] as String?,
      numBoxes: fields[88] as int?,
      totalWeight: fields[89] as double?,
      Origin: fields[90] as int?,
      Currency: fields[91] as String?,
      CurrencyConvRate: fields[92] as double?,
      currencyDecimalPoint: fields[93] as int?,
      isCoupled: fields[94] as bool?,
      shippingInfo: fields[95] as ShippingDetailDataModel?,
      saveStatus: fields[96] as SaveStatus,
    );
  }

  @override
  void write(BinaryWriter writer, GeneralVoucherDataModel obj) {
    writer
      ..writeByte(98)
      ..writeByte(0)
      ..write(obj.DisplayVoucherNumber)
      ..writeByte(1)
      ..write(obj.voucherNumber)
      ..writeByte(2)
      ..write(obj.VoucherDate)
      ..writeByte(3)
      ..write(obj.VoucherPrefix)
      ..writeByte(4)
      ..write(obj.invoiceNumber)
      ..writeByte(5)
      ..write(obj.invoiceDate)
      ..writeByte(6)
      ..write(obj.DateCreated)
      ..writeByte(7)
      ..write(obj.timestamp)
      ..writeByte(8)
      ..write(obj.lastEditedDateTime)
      ..writeByte(9)
      ..write(obj.ledgerObject)
      ..writeByte(10)
      ..write(obj.InventoryItems)
      ..writeByte(11)
      ..write(obj.deletedItems)
      ..writeByte(12)
      ..write(obj.ledgersList)
      ..writeByte(13)
      ..write(obj.narration)
      ..writeByte(14)
      ..write(obj.priceListId)
      ..writeByte(15)
      ..write(obj.priceListName)
      ..writeByte(16)
      ..write(obj.discount)
      ..writeByte(17)
      ..write(obj.discountPercent)
      ..writeByte(18)
      ..write(obj.subTotal)
      ..writeByte(19)
      ..write(obj.grossTotal)
      ..writeByte(20)
      ..write(obj.discountinAmount)
      ..writeByte(21)
      ..write(obj.grandTotal)
      ..writeByte(22)
      ..write(obj.taxTotalAmount)
      ..writeByte(23)
      ..write(obj.otherLedgersTotal)
      ..writeByte(24)
      ..write(obj.cessAmount)
      ..writeByte(25)
      ..write(obj.currencyConversionRate)
      ..writeByte(26)
      ..write(obj.currency)
      ..writeByte(27)
      ..write(obj.ProjectId)
      ..writeByte(28)
      ..write(obj.AddedBy)
      ..writeByte(29)
      ..write(obj.AddedById)
      ..writeByte(30)
      ..write(obj.packedBy)
      ..writeByte(31)
      ..write(obj.DeliveryDate)
      ..writeByte(32)
      ..write(obj.DeliveryTime)
      ..writeByte(33)
      ..write(obj.CompletionProbability)
      ..writeByte(34)
      ..write(obj.completedTimeStamp)
      ..writeByte(35)
      ..write(obj.RevisionNo)
      ..writeByte(36)
      ..write(obj.ConvertedToSalesOrder)
      ..writeByte(37)
      ..write(obj.QuotationPrepared)
      ..writeByte(38)
      ..write(obj.QuotationDropped)
      ..writeByte(39)
      ..write(obj.QuotationDroppedReason)
      ..writeByte(40)
      ..write(obj.SalesmanID)
      ..writeByte(41)
      ..write(obj.TermsAndConditionsID)
      ..writeByte(42)
      ..write(obj.RequirementVoucherNo)
      ..writeByte(43)
      ..write(obj.Contact)
      ..writeByte(44)
      ..write(obj.LPO)
      ..writeByte(45)
      ..write(obj.BillingName)
      ..writeByte(46)
      ..write(obj.prevTransVouchers)
      ..writeByte(47)
      ..write(obj.roundOff)
      ..writeByte(48)
      ..write(obj.status)
      ..writeByte(49)
      ..write(obj.voucherType)
      ..writeByte(50)
      ..write(obj.isIGST)
      ..writeByte(51)
      ..write(obj.ManagerApprovalStatus)
      ..writeByte(52)
      ..write(obj.ClientApprovalStatus)
      ..writeByte(53)
      ..write(obj.NoOfCopies)
      ..writeByte(54)
      ..write(obj.ModeOfService)
      ..writeByte(55)
      ..write(obj.quantityTotal)
      ..writeByte(56)
      ..write(obj.BalanceAmount)
      ..writeByte(57)
      ..write(obj.PaidAmount)
      ..writeByte(58)
      ..write(obj.reference)
      ..writeByte(59)
      ..write(obj.Location)
      ..writeByte(60)
      ..write(obj.POCName)
      ..writeByte(61)
      ..write(obj.POCEmail)
      ..writeByte(62)
      ..write(obj.POCPhone)
      ..writeByte(63)
      ..write(obj.kotNumber)
      ..writeByte(64)
      ..write(obj.BillSplit)
      ..writeByte(65)
      ..write(obj.paymentSplit)
      ..writeByte(66)
      ..write(obj.advanceCash)
      ..writeByte(67)
      ..write(obj.balance)
      ..writeByte(68)
      ..write(obj.fromGodownName)
      ..writeByte(69)
      ..write(obj.toGodownName)
      ..writeByte(70)
      ..write(obj.fromGodownID)
      ..writeByte(71)
      ..write(obj.toGodownID)
      ..writeByte(72)
      ..write(obj.mapList)
      ..writeByte(73)
      ..write(obj.chequeEntry)
      ..writeByte(74)
      ..write(obj.isReconciled)
      ..writeByte(75)
      ..write(obj.reconciledOn)
      ..writeByte(76)
      ..write(obj.crTotal)
      ..writeByte(77)
      ..write(obj.drTotal)
      ..writeByte(78)
      ..write(obj.ledgersTotal)
      ..writeByte(79)
      ..write(obj.fromExternal)
      ..writeByte(80)
      ..write(obj.sendFlag)
      ..writeByte(81)
      ..write(obj.voucherToExport)
      ..writeByte(82)
      ..write(obj.TransactionId)
      ..writeByte(83)
      ..write(obj.action)
      ..writeByte(84)
      ..write(obj.CustomerExpectingDate)
      ..writeByte(85)
      ..write(obj.HashTags)
      ..writeByte(86)
      ..write(obj.purchaseLedger)
      ..writeByte(87)
      ..write(obj.LRNO)
      ..writeByte(88)
      ..write(obj.numBoxes)
      ..writeByte(89)
      ..write(obj.totalWeight)
      ..writeByte(90)
      ..write(obj.Origin)
      ..writeByte(91)
      ..write(obj.Currency)
      ..writeByte(92)
      ..write(obj.CurrencyConvRate)
      ..writeByte(93)
      ..write(obj.currencyDecimalPoint)
      ..writeByte(94)
      ..write(obj.isCoupled)
      ..writeByte(95)
      ..write(obj.shippingInfo)
      ..writeByte(96)
      ..write(obj.saveStatus)
      ..writeByte(97)
      ..write(obj.CreditPeriod);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GeneralVoucherDataModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
