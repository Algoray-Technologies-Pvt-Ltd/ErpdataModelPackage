// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:datamodelpackage/master/BillwiseMappingModel.dart';
import 'package:datamodelpackage/master/CompoundItemDataModel.dart';
import 'package:datamodelpackage/master/ContactsDataModel.dart';
import 'package:datamodelpackage/master/InventoryItemHive.dart';
import 'package:datamodelpackage/master/LedgerMasterHiveModel.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

import 'package:datamodelpackage/transaction/ChequeDetailModel.dart';

import 'package:datamodelpackage/transaction/ShippingDetailDataModel.dart';

part 'GeneralVoucherDataModel.g.dart';
@HiveType(typeId: 7)
class GeneralVoucherDataModel extends HiveObject with EquatableMixin {
  @HiveField(0)
  final String? DisplayVoucherNumber;
  @HiveField(1)
  final String? voucherNumber;
  @HiveField(2)
  final DateTime? VoucherDate;
  @HiveField(3)
  final String? VoucherPrefix;
  @HiveField(4)
  final String? invoiceNumber;
  @HiveField(5)
  final DateTime? invoiceDate;
  @HiveField(6)
  final DateTime? DateCreated;
  @HiveField(7)
  final DateTime? timestamp;
  @HiveField(8)
  final DateTime? lastEditedDateTime;
  @HiveField(9)
  final LedgerMasterHiveModel? ledgerObject;
  @HiveField(10)
  final List<CompoundItemDataModel>? InventoryItems;
  @HiveField(11)
  final List<InventoryItemHive>? deletedItems;
  @HiveField(12)
  final List<LedgerMasterHiveModel> ledgersList;
  @HiveField(13)
  final String? narration;
  @HiveField(14)
  final int? priceListId;
  @HiveField(15)
  final String? priceListName;
  @HiveField(16)
  final double? discount;
  @HiveField(17)
  final double? discountPercent;
  @HiveField(18)
  final double? subTotal;
  @HiveField(19)
  final double? grossTotal;
  @HiveField(20)
  double? discountinAmount;
  @HiveField(21)
  double? grandTotal;
  @HiveField(22)
  double? taxTotalAmount;
  @HiveField(23)
  final double? otherLedgersTotal;
  @HiveField(24)
  double? cessAmount;
  @HiveField(25)
  final double? currencyConversionRate;
  @HiveField(26)
  final String? currency;
  @HiveField(27)
  final String? ProjectId;
  @HiveField(28)
  final String? AddedBy;
  @HiveField(29)
  final int? AddedById;
  @HiveField(30)
  final int? packedBy;
  @HiveField(31)
  final DateTime? DeliveryDate;
  @HiveField(32)
  final DateTime? DeliveryTime;
  @HiveField(33)
  final double? CompletionProbability;

  @HiveField(34)
  final DateTime? completedTimeStamp;
  @HiveField(35)
  final int? RevisionNo;
  @HiveField(36)
  final String? ConvertedToSalesOrder;
  @HiveField(37)
  final bool? QuotationPrepared;
  @HiveField(38)
  final bool? QuotationDropped;
  @HiveField(39)
  final String? QuotationDroppedReason;
  @HiveField(40)
  final int? SalesmanID;
  @HiveField(41)
  final String? TermsAndConditionsID;
  @HiveField(42)
  final String? RequirementVoucherNo;
  @HiveField(43)
  final ContactsDataModel? Contact;
  @HiveField(44)
  final String? LPO;
  @HiveField(45)
  final String? BillingName;
  @HiveField(46)
  final String? prevTransVouchers;
  @HiveField(47)
  double? roundOff;
  @HiveField(48)
  final int? status;
  @HiveField(49)
  final String? voucherType;
  @HiveField(50)
  final bool? isIGST;
  @HiveField(51)
  final bool? ManagerApprovalStatus;
  @HiveField(52)
  final bool? ClientApprovalStatus;

  //    final int? Pax;  // changed to numBoxes
  @HiveField(53)
  final int? NoOfCopies;
  @HiveField(54)
  final int? ModeOfService;
  @HiveField(55)
  double? quantityTotal;
  @HiveField(56)
  double? BalanceAmount;
  @HiveField(57)
  final double? PaidAmount;
  @HiveField(58)
  final String? reference;
  @HiveField(59)
  final String? Location;
  @HiveField(60)
  final String? POCName;
  @HiveField(61)
  final String? POCEmail;
  @HiveField(62)
  final String? POCPhone;
  @HiveField(63)
  final String? kotNumber;
  @HiveField(64)
  final bool? BillSplit;
  @HiveField(65)
  final bool? paymentSplit;
  @HiveField(66)
  final double? advanceCash;
  @HiveField(67)
  final double? balance;
  @HiveField(68)
  final String? fromGodownName;
  @HiveField(69)
  final String? toGodownName;
  @HiveField(70)
  final String? fromGodownID;
  @HiveField(71)
  final String? toGodownID;
  @HiveField(72)
  final List<BillwiseMappingModel>? mapList;
  @HiveField(73)
  final ChequeDetailModel? chequeEntry;
  @HiveField(74)
  final bool? isReconciled;
  @HiveField(75)
  final DateTime? reconciledOn;
  @HiveField(76)
  double? crTotal;
  @HiveField(77)
  double? drTotal;
  @HiveField(78)
  double? ledgersTotal;
  @HiveField(79)
  final bool? fromExternal;
  @HiveField(80)
  final bool? sendFlag;
  @HiveField(81)
  final bool? voucherToExport;
  @HiveField(82)
  final String? TransactionId;
  @HiveField(83)
  final int? action;
  @HiveField(84)
  final DateTime? CustomerExpectingDate;
  @HiveField(85)
  final List<String>? HashTags;
  @HiveField(86)
  final LedgerMasterHiveModel? purchaseLedger;
  @HiveField(87)
  final String? LRNO;
  @HiveField(88)
  final int? numBoxes;
  @HiveField(89)
  double? totalWeight = 0;
  @HiveField(90)
  final int? Origin;
  @HiveField(91)
  final String? Currency;
  @HiveField(92)
  final double? CurrencyConvRate;
  @HiveField(93)
  final int? currencyDecimalPoint;
  @HiveField(94)
  final bool? isCoupled;
  @HiveField(95)
  final ShippingDetailDataModel? shippingInfo;
  @HiveField(96)
  final SaveStatus saveStatus;
  @HiveField(97)
  final int? CreditPeriod;
  GeneralVoucherDataModel({
    this.DisplayVoucherNumber,
    this.voucherNumber,
    this.VoucherDate,
    this.VoucherPrefix,
    this.invoiceNumber,
    this.invoiceDate,
    this.DateCreated,
    this.timestamp,
    this.lastEditedDateTime,
    this.ledgerObject,
    this.InventoryItems,
    this.deletedItems,
    required this.ledgersList,
    this.narration,
    this.priceListId,
    this.priceListName,
    this.discount,
    this.discountPercent,
    this.subTotal = 0,
    this.grossTotal = 0,
    this.discountinAmount = 0,
    this.grandTotal = 0,
    this.taxTotalAmount = 0,
    this.otherLedgersTotal = 0,
    this.cessAmount = 0,
    this.currencyConversionRate = 1,
    this.currency,
    this.ProjectId,
    this.AddedBy,
    this.AddedById,
    this.packedBy,
    this.DeliveryDate,
    this.DeliveryTime,
    this.CompletionProbability,
    this.CreditPeriod,
    this.completedTimeStamp,
    this.RevisionNo,
    this.ConvertedToSalesOrder,
    this.QuotationPrepared,
    this.QuotationDropped,
    this.QuotationDroppedReason,
    this.SalesmanID,
    this.TermsAndConditionsID,
    this.RequirementVoucherNo,
    this.Contact,
    this.LPO,
    this.BillingName,
    this.prevTransVouchers,
    this.roundOff,
    this.status,
    this.voucherType,
    this.isIGST,
    this.ManagerApprovalStatus,
    this.ClientApprovalStatus,
    this.NoOfCopies,
    this.ModeOfService,
    this.quantityTotal = 0,
    this.BalanceAmount = 0,
    this.PaidAmount = 0,
    this.reference,
    this.Location,
    this.POCName,
    this.POCEmail,
    this.POCPhone,
    this.kotNumber,
    this.BillSplit,
    this.paymentSplit,
    this.advanceCash,
    this.balance,
    this.fromGodownName,
    this.toGodownName,
    this.fromGodownID,
    this.toGodownID,
    this.mapList,
    this.chequeEntry,
    this.isReconciled,
    this.reconciledOn,
    this.crTotal = 0,
    this.drTotal = 0,
    this.ledgersTotal,
    this.fromExternal,
    this.sendFlag,
    this.voucherToExport,
    this.TransactionId,
    this.action,
    this.CustomerExpectingDate,
    this.HashTags,
    this.purchaseLedger,
    this.LRNO,
    this.numBoxes = 0,
    this.totalWeight = 0,
    this.Origin,
    this.Currency,
    this.CurrencyConvRate,
    this.currencyDecimalPoint,
    this.isCoupled,
    this.shippingInfo,
    this.saveStatus = SaveStatus.ready,
  });

  GeneralVoucherDataModel copyWith({
    String? DisplayVoucherNumber,
    String? voucherNumber,
    DateTime? VoucherDate,
    String? VoucherPrefix,
    String? invoiceNumber,
    DateTime? invoiceDate,
    DateTime? DateCreated,
    DateTime? timestamp,
    DateTime? lastEditedDateTime,
    LedgerMasterHiveModel? ledgerObject,
    List<CompoundItemDataModel>? InventoryItems,
    List<InventoryItemHive>? deletedItems,
    List<LedgerMasterHiveModel>? ledgersList,
    String? narration,
    int? priceListId,
    String? priceListName,
    double? discount,
    double? discountPercent,
    double? subTotal,
    double? grossTotal,
    double? discountinAmount,
    double? grandTotal,
    double? taxTotalAmount,
    double? otherLedgersTotal,
    double? cessAmount,
    double? currencyConversionRate,
    String? currency,
    String? ProjectId,
    String? AddedBy,
    int? AddedById,
    int? packedBy,
    DateTime? DeliveryDate,
    DateTime? DeliveryTime,
    double? CompletionProbability,
    int? CreditPeriod,
    DateTime? completedTimeStamp,
    int? RevisionNo,
    String? ConvertedToSalesOrder,
    bool? QuotationPrepared,
    bool? QuotationDropped,
    String? QuotationDroppedReason,
    int? SalesmanID,
    String? TermsAndConditionsID,
    String? RequirementVoucherNo,
    ContactsDataModel? Contact,
    String? LPO,
    String? BillingName,
    String? prevTransVouchers,
    double? roundOff,
    int? status,
    String? voucherType,
    bool? isIGST,
    bool? ManagerApprovalStatus,
    bool? ClientApprovalStatus,
    int? NoOfCopies,
    int? ModeOfService,
    double? quantityTotal,
    double? BalanceAmount,
    double? PaidAmount,
    String? reference,
    String? Location,
    String? POCName,
    String? POCEmail,
    String? POCPhone,
    String? kotNumber,
    bool? BillSplit,
    bool? paymentSplit,
    double? advanceCash,
    double? balance,
    String? fromGodownName,
    String? toGodownName,
    String? fromGodownID,
    String? toGodownID,
    List<BillwiseMappingModel>? mapList,
    ChequeDetailModel? chequeEntry,
    bool? isReconciled,
    DateTime? reconciledOn,
    double? crTotal,
    double? drTotal,
    double? ledgersTotal,
    bool? fromExternal,
    bool? sendFlag,
    bool? voucherToExport,
    String? TransactionId,
    int? action,
    DateTime? CustomerExpectingDate,
    List<String>? HashTags,
    LedgerMasterHiveModel? purchaseLedger,
    String? LRNO,
    int? numBoxes,
    double? totalWeight,
    int? Origin,
    String? Currency,
    double? CurrencyConvRate,
    int? currencyDecimalPoint,
    bool? isCoupled,
    ShippingDetailDataModel? shippingInfo,
    SaveStatus? saveStatus,
  }) {
    return GeneralVoucherDataModel(
      DisplayVoucherNumber: DisplayVoucherNumber ?? this.DisplayVoucherNumber,
      voucherNumber: voucherNumber ?? this.voucherNumber,
      VoucherDate: VoucherDate ?? this.VoucherDate,
      VoucherPrefix: VoucherPrefix ?? this.VoucherPrefix,
      invoiceNumber: invoiceNumber ?? this.invoiceNumber,
      invoiceDate: invoiceDate ?? this.invoiceDate,
      DateCreated: DateCreated ?? this.DateCreated,
      timestamp: timestamp ?? this.timestamp,
      lastEditedDateTime: lastEditedDateTime ?? this.lastEditedDateTime,
      ledgerObject: ledgerObject ?? this.ledgerObject,
      InventoryItems: InventoryItems ?? this.InventoryItems,
      deletedItems: deletedItems ?? this.deletedItems,
      ledgersList: ledgersList ?? this.ledgersList,
      narration: narration ?? this.narration,
      priceListId: priceListId ?? this.priceListId,
      priceListName: priceListName ?? this.priceListName,
      discount: discount ?? this.discount,
      discountPercent: discountPercent ?? this.discountPercent,
      subTotal: subTotal ?? this.subTotal,
      grossTotal: grossTotal ?? this.grossTotal,
      discountinAmount: discountinAmount ?? this.discountinAmount,
      grandTotal: grandTotal ?? this.grandTotal,
      taxTotalAmount: taxTotalAmount ?? this.taxTotalAmount,
      otherLedgersTotal: otherLedgersTotal ?? this.otherLedgersTotal,
      cessAmount: cessAmount ?? this.cessAmount,
      currencyConversionRate:
          currencyConversionRate ?? this.currencyConversionRate,
      currency: currency ?? this.currency,
      ProjectId: ProjectId ?? this.ProjectId,
      AddedBy: AddedBy ?? this.AddedBy,
      AddedById: AddedById ?? this.AddedById,
      packedBy: packedBy ?? this.packedBy,
      DeliveryDate: DeliveryDate ?? this.DeliveryDate,
      DeliveryTime: DeliveryTime ?? this.DeliveryTime,
      CompletionProbability:
          CompletionProbability ?? this.CompletionProbability,
      CreditPeriod: CreditPeriod ?? this.CreditPeriod,
      completedTimeStamp: completedTimeStamp ?? this.completedTimeStamp,
      RevisionNo: RevisionNo ?? this.RevisionNo,
      ConvertedToSalesOrder:
          ConvertedToSalesOrder ?? this.ConvertedToSalesOrder,
      QuotationPrepared: QuotationPrepared ?? this.QuotationPrepared,
      QuotationDropped: QuotationDropped ?? this.QuotationDropped,
      QuotationDroppedReason:
          QuotationDroppedReason ?? this.QuotationDroppedReason,
      SalesmanID: SalesmanID ?? this.SalesmanID,
      TermsAndConditionsID: TermsAndConditionsID ?? this.TermsAndConditionsID,
      RequirementVoucherNo: RequirementVoucherNo ?? this.RequirementVoucherNo,
      Contact: Contact ?? this.Contact,
      LPO: LPO ?? this.LPO,
      BillingName: BillingName ?? this.BillingName,
      prevTransVouchers: prevTransVouchers ?? this.prevTransVouchers,
      roundOff: roundOff ?? this.roundOff,
      status: status ?? this.status,
      voucherType: voucherType ?? this.voucherType,
      isIGST: isIGST ?? this.isIGST,
      ManagerApprovalStatus:
          ManagerApprovalStatus ?? this.ManagerApprovalStatus,
      ClientApprovalStatus: ClientApprovalStatus ?? this.ClientApprovalStatus,
      NoOfCopies: NoOfCopies ?? this.NoOfCopies,
      ModeOfService: ModeOfService ?? this.ModeOfService,
      quantityTotal: quantityTotal ?? this.quantityTotal,
      BalanceAmount: BalanceAmount ?? this.BalanceAmount,
      PaidAmount: PaidAmount ?? this.PaidAmount,
      reference: reference ?? this.reference,
      Location: Location ?? this.Location,
      POCName: POCName ?? this.POCName,
      POCEmail: POCEmail ?? this.POCEmail,
      POCPhone: POCPhone ?? this.POCPhone,
      kotNumber: kotNumber ?? this.kotNumber,
      BillSplit: BillSplit ?? this.BillSplit,
      paymentSplit: paymentSplit ?? this.paymentSplit,
      advanceCash: advanceCash ?? this.advanceCash,
      balance: balance ?? this.balance,
      fromGodownName: fromGodownName ?? this.fromGodownName,
      toGodownName: toGodownName ?? this.toGodownName,
      fromGodownID: fromGodownID ?? this.fromGodownID,
      toGodownID: toGodownID ?? this.toGodownID,
      mapList: mapList ?? this.mapList,
      chequeEntry: chequeEntry ?? this.chequeEntry,
      isReconciled: isReconciled ?? this.isReconciled,
      reconciledOn: reconciledOn ?? this.reconciledOn,
      crTotal: crTotal ?? this.crTotal,
      drTotal: drTotal ?? this.drTotal,
      ledgersTotal: ledgersTotal ?? this.ledgersTotal,
      fromExternal: fromExternal ?? this.fromExternal,
      sendFlag: sendFlag ?? this.sendFlag,
      voucherToExport: voucherToExport ?? this.voucherToExport,
      TransactionId: TransactionId ?? this.TransactionId,
      action: action ?? this.action,
      CustomerExpectingDate:
          CustomerExpectingDate ?? this.CustomerExpectingDate,
      HashTags: HashTags ?? this.HashTags,
      purchaseLedger: purchaseLedger ?? this.purchaseLedger,
      LRNO: LRNO ?? this.LRNO,
      numBoxes: numBoxes ?? this.numBoxes,
      totalWeight: totalWeight ?? this.totalWeight,
      Origin: Origin ?? this.Origin,
      Currency: Currency ?? this.Currency,
      CurrencyConvRate: CurrencyConvRate ?? this.CurrencyConvRate,
      currencyDecimalPoint: currencyDecimalPoint ?? this.currencyDecimalPoint,
      isCoupled: isCoupled ?? this.isCoupled,
      shippingInfo: shippingInfo ?? this.shippingInfo,
      saveStatus: saveStatus ?? this.saveStatus,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'DisplayVoucherNumber': DisplayVoucherNumber,
      'voucherNumber': voucherNumber,
      'VoucherDate': VoucherDate?.millisecondsSinceEpoch,
      'VoucherPrefix': VoucherPrefix,
      'invoiceNumber': invoiceNumber,
      'invoiceDate': invoiceDate?.millisecondsSinceEpoch,
      'DateCreated': DateCreated?.millisecondsSinceEpoch,
      'timestamp': timestamp?.millisecondsSinceEpoch,
      'lastEditedDateTime': lastEditedDateTime?.millisecondsSinceEpoch,
      'ledgerObject': ledgerObject?.toMap(),
      'InventoryItems': InventoryItems?.map((x) => x.toMap()).toList(),
      'deletedItems': deletedItems?.map((x) => x.toMap()).toList(),
      'ledgersList': ledgersList.map((x) => x.toMap()).toList(),
      'narration': narration,
      'priceListId': priceListId,
      'priceListName': priceListName,
      'discount': discount,
      'discountPercent': discountPercent,
      'subTotal': subTotal,
      'grossTotal': grossTotal,
      'discountinAmount': discountinAmount,
      'grandTotal': grandTotal,
      'taxTotalAmount': taxTotalAmount,
      'otherLedgersTotal': otherLedgersTotal,
      'cessAmount': cessAmount,
      'currencyConversionRate': currencyConversionRate,
      'currency': currency,
      'ProjectId': ProjectId,
      'AddedBy': AddedBy,
      'AddedById': AddedById,
      'packedBy': packedBy,
      'DeliveryDate': DeliveryDate?.millisecondsSinceEpoch,
      'DeliveryTime': DeliveryTime?.millisecondsSinceEpoch,
      'CompletionProbability': CompletionProbability,
      'CreditPeriod': CreditPeriod,
      'completedTimeStamp': completedTimeStamp?.millisecondsSinceEpoch,
      'RevisionNo': RevisionNo,
      'ConvertedToSalesOrder': ConvertedToSalesOrder,
      'QuotationPrepared': QuotationPrepared,
      'QuotationDropped': QuotationDropped,
      'QuotationDroppedReason': QuotationDroppedReason,
      'SalesmanID': SalesmanID,
      'TermsAndConditionsID': TermsAndConditionsID,
      'RequirementVoucherNo': RequirementVoucherNo,
      'Contact': Contact?.toMap(),
      'LPO': LPO,
      'BillingName': BillingName,
      'prevTransVouchers': prevTransVouchers,
      'roundOff': roundOff,
      'status': status,
      'voucherType': voucherType,
      'isIGST': isIGST,
      'ManagerApprovalStatus': ManagerApprovalStatus,
      'ClientApprovalStatus': ClientApprovalStatus,
      'NoOfCopies': NoOfCopies,
      'ModeOfService': ModeOfService,
      'quantityTotal': quantityTotal,
      'BalanceAmount': BalanceAmount,
      'PaidAmount': PaidAmount,
      'reference': reference,
      'Location': Location,
      'POCName': POCName,
      'POCEmail': POCEmail,
      'POCPhone': POCPhone,
      'kotNumber': kotNumber,
      'BillSplit': BillSplit,
      'paymentSplit': paymentSplit,
      'advanceCash': advanceCash,
      'balance': balance,
      'fromGodownName': fromGodownName,
      'toGodownName': toGodownName,
      'fromGodownID': fromGodownID,
      'toGodownID': toGodownID,
      'mapList': mapList?.map((x) => x.toMap()).toList(),
      'chequeEntry': chequeEntry?.toMap(),
      'isReconciled': isReconciled,
      'reconciledOn': reconciledOn?.millisecondsSinceEpoch,
      'crTotal': crTotal,
      'drTotal': drTotal,
      'ledgersTotal': ledgersTotal,
      'fromExternal': fromExternal,
      'sendFlag': sendFlag,
      'voucherToExport': voucherToExport,
      'TransactionId': TransactionId,
      'action': action,
      'CustomerExpectingDate': CustomerExpectingDate?.millisecondsSinceEpoch,
      'HashTags': HashTags,
      'purchaseLedger': purchaseLedger?.toMap(),
      'LRNO': LRNO,
      'numBoxes': numBoxes,
      'totalWeight': totalWeight,
      'Origin': Origin,
      'Currency': Currency,
      'CurrencyConvRate': CurrencyConvRate,
      'currencyDecimalPoint': currencyDecimalPoint,
      'isCoupled': isCoupled,
      'shippingInfo': shippingInfo?.toMap(),
    };
  }

  factory GeneralVoucherDataModel.fromMap(Map<String, dynamic> map) {
    return GeneralVoucherDataModel(
      DisplayVoucherNumber: map['DisplayVoucherNumber'],
      voucherNumber: map['voucherNumber'],
      VoucherDate: map['VoucherDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['VoucherDate'])
          : null,
      VoucherPrefix: map['VoucherPrefix'],
      invoiceNumber: map['invoiceNumber'],
      invoiceDate: map['invoiceDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['invoiceDate'])
          : null,
      DateCreated: map['DateCreated'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['DateCreated'])
          : null,
      timestamp: map['timestamp'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['timestamp'])
          : null,
      lastEditedDateTime: map['lastEditedDateTime'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['lastEditedDateTime'])
          : null,
      ledgerObject: map['ledgerObject'] != null
          ? LedgerMasterHiveModel.fromMap(map['ledgerObject'])
          : null,
      InventoryItems: map['InventoryItems'] != null
          ? List<CompoundItemDataModel>.from(map['InventoryItems']
              ?.map((x) => CompoundItemDataModel.fromMapForTransTest(x)))
          : null,
      deletedItems: map['deletedItems'] != null
          ? List<InventoryItemHive>.from(
              map['deletedItems']?.map((x) => InventoryItemHive.fromMap(x)))
          : null,
      ledgersList: map['ledgersList'] != null
          ? List<LedgerMasterHiveModel>.from(
              map['ledgersList']?.map((x) => LedgerMasterHiveModel.fromMap(x)))
          : [],
      narration: map['narration'],
      priceListId: map['priceListId'],
      priceListName: map['priceListName'],
      discount: map['discount']?.toDouble(),
      discountPercent: map['discountPercent']?.toDouble(),
      subTotal: map['subTotal']?.toDouble(),
      grossTotal: map['grossTotal']?.toDouble(),
      discountinAmount: map['discountinAmount']?.toDouble(),
      grandTotal: map['grandTotal']?.toDouble(),
      taxTotalAmount: map['taxTotalAmount']?.toDouble(),
      otherLedgersTotal: map['otherLedgersTotal']?.toDouble(),
      cessAmount: map['cessAmount']?.toDouble(),
      currencyConversionRate: map['currencyConversionRate']?.toDouble(),
      currency: map['currency'],
      ProjectId: map['ProjectId'],
      AddedBy: map['AddedBy'],
      AddedById: map['AddedById']?.toInt(),
      packedBy: map['packedBy']?.toInt(),
      DeliveryDate: map['DeliveryDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['DeliveryDate'])
          : null,
      DeliveryTime: map['DeliveryTime'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['DeliveryTime'])
          : null,
      CompletionProbability: map['CompletionProbability']?.toDouble(),
      CreditPeriod: map['CreditPeriod']?.toInt(),
      completedTimeStamp: map['completedTimeStamp'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['completedTimeStamp'])
          : null,
      RevisionNo: map['RevisionNo']?.toInt(),
      ConvertedToSalesOrder: map['ConvertedToSalesOrder'],
      QuotationPrepared: map['QuotationPrepared'],
      QuotationDropped: map['QuotationDropped'],
      QuotationDroppedReason: map['QuotationDroppedReason'],
      SalesmanID: map['SalesmanID'],
      TermsAndConditionsID: map['TermsAndConditionsID'],
      RequirementVoucherNo: map['RequirementVoucherNo'],
      Contact: map['Contact'] != null
          ? ContactsDataModel.fromMap(map['Contact'])
          : null,
      LPO: map['LPO'],
      BillingName: map['BillingName'],
      prevTransVouchers: map['prevTransVouchers'],
      roundOff: map['roundOff']?.toDouble(),
      status: map['status']?.toInt(),
      voucherType: map['voucherType'],
      isIGST: map['isIGST'],
      ManagerApprovalStatus: map['ManagerApprovalStatus'],
      ClientApprovalStatus: map['ClientApprovalStatus'],
      NoOfCopies: map['NoOfCopies']?.toInt(),
      ModeOfService: map['ModeOfService']?.toInt(),
      quantityTotal: map['quantityTotal']?.toDouble(),
      BalanceAmount: map['BalanceAmount']?.toDouble(),
      PaidAmount: map['PaidAmount']?.toDouble(),
      reference: map['reference'],
      Location: map['Location'],
      POCName: map['POCName'],
      POCEmail: map['POCEmail'],
      POCPhone: map['POCPhone'],
      kotNumber: map['kotNumber'],
      BillSplit: map['BillSplit'],
      paymentSplit: map['paymentSplit'],
      advanceCash: map['advanceCash']?.toDouble(),
      balance: map['balance']?.toDouble(),
      fromGodownName: map['fromGodownName'],
      toGodownName: map['toGodownName'],
      fromGodownID: map['fromGodownID'],
      toGodownID: map['toGodownID'],
      mapList: map['mapList'] != null
          ? List<BillwiseMappingModel>.from(
              map['mapList']?.map((x) => BillwiseMappingModel.fromMap(x)))
          : null,
      chequeEntry: map['chequeEntry'] != null
          ? ChequeDetailModel.fromMap(map['chequeEntry'])
          : null,
      isReconciled: map['isReconciled'],
      reconciledOn: map['reconciledOn'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['reconciledOn'])
          : null,
      crTotal: map['crTotal']?.toDouble(),
      drTotal: map['drTotal']?.toDouble(),
      ledgersTotal: map['ledgersTotal']?.toDouble(),
      fromExternal: map['fromExternal'],
      sendFlag: map['sendFlag'],
      voucherToExport: map['voucherToExport'],
      TransactionId: map['TransactionId'],
      action: map['action']?.toInt(),
      CustomerExpectingDate: map['CustomerExpectingDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['CustomerExpectingDate'])
          : null,
      HashTags: List<String>.from(map['HashTags']),
      purchaseLedger: LedgerMasterHiveModel.fromMap(map['purchaseLedger']),
      LRNO: map['LRNO'],
      numBoxes: map['numBoxes']?.toInt(),
      totalWeight: map['totalWeight']?.toDouble(),
      Origin: map['Origin']?.toInt(),
      Currency: map['Currency'],
      CurrencyConvRate: map['CurrencyConvRate']?.toDouble(),
      currencyDecimalPoint: map['currencyDecimalPoint']?.toInt(),
      isCoupled: map['isCoupled'],
      shippingInfo: map['shippingInfo'] != null
          ? ShippingDetailDataModel.fromMap(map['shippingInfo'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  // String toJsonTrans() => json.encode(toMapForTransTest());

  factory GeneralVoucherDataModel.fromJson(String source) =>
      GeneralVoucherDataModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'GeneralVoucherDataModel(DisplayVoucherNumber: $DisplayVoucherNumber, voucherNumber: $voucherNumber, VoucherDate: $VoucherDate, VoucherPrefix: $VoucherPrefix, invoiceNumber: $invoiceNumber, invoiceDate: $invoiceDate, DateCreated: $DateCreated, timestamp: $timestamp, lastEditedDateTime: $lastEditedDateTime, ledgerObject: $ledgerObject, InventoryItems: $InventoryItems, deletedItems: $deletedItems, ledgersList: $ledgersList, narration: $narration, priceListId: $priceListId, priceListName: $priceListName, discount: $discount, discountPercent: $discountPercent, subTotal: $subTotal, grossTotal: $grossTotal, discountinAmount: $discountinAmount, grandTotal: $grandTotal, taxTotalAmount: $taxTotalAmount, otherLedgersTotal: $otherLedgersTotal, cessAmount: $cessAmount, currencyConversionRate: $currencyConversionRate, currency: $currency, ProjectId: $ProjectId, AddedBy: $AddedBy, AddedById: $AddedById, packedBy: $packedBy, DeliveryDate: $DeliveryDate, DeliveryTime: $DeliveryTime, CompletionProbability: $CompletionProbability, CreditPeriod: $CreditPeriod, completedTimeStamp: $completedTimeStamp, RevisionNo: $RevisionNo, ConvertedToSalesOrder: $ConvertedToSalesOrder, QuotationPrepared: $QuotationPrepared, QuotationDropped: $QuotationDropped, QuotationDroppedReason: $QuotationDroppedReason, SalesmanID: $SalesmanID, TermsAndConditionsID: $TermsAndConditionsID, RequirementVoucherNo: $RequirementVoucherNo, Contact: $Contact, LPO: $LPO, BillingName: $BillingName, prevTransVouchers: $prevTransVouchers, roundOff: $roundOff, status: $status, voucherType: $voucherType, isIGST: $isIGST, ManagerApprovalStatus: $ManagerApprovalStatus, ClientApprovalStatus: $ClientApprovalStatus, NoOfCopies: $NoOfCopies, ModeOfService: $ModeOfService, quantityTotal: $quantityTotal, BalanceAmount: $BalanceAmount, PaidAmount: $PaidAmount, reference: $reference, Location: $Location, POCName: $POCName, POCEmail: $POCEmail, POCPhone: $POCPhone, kotNumber: $kotNumber, BillSplit: $BillSplit, paymentSplit: $paymentSplit, advanceCash: $advanceCash, balance: $balance, fromGodownName: $fromGodownName, toGodownName: $toGodownName, fromGodownID: $fromGodownID, toGodownID: $toGodownID, mapList: $mapList, chequeEntry: $chequeEntry, isReconciled: $isReconciled, reconciledOn: $reconciledOn, crTotal: $crTotal, drTotal: $drTotal, ledgersTotal: $ledgersTotal, fromExternal: $fromExternal, sendFlag: $sendFlag, voucherToExport: $voucherToExport, TransactionId: $TransactionId, action: $action, CustomerExpectingDate: $CustomerExpectingDate, HashTags: $HashTags, purchaseLedger: $purchaseLedger, LRNO: $LRNO, numBoxes: $numBoxes, totalWeight: $totalWeight, Origin: $Origin, Currency: $Currency, CurrencyConvRate: $CurrencyConvRate, currencyDecimalPoint: $currencyDecimalPoint, isCoupled: $isCoupled, shippingInfo: $shippingInfo)';
  }

  @override
  List<Object?> get props {
    return [
      DisplayVoucherNumber,
      voucherNumber,
      VoucherDate,
      VoucherPrefix,
      invoiceNumber,
      invoiceDate,
      DateCreated,
      timestamp,
      lastEditedDateTime,
      ledgerObject,
      InventoryItems,
      deletedItems,
      ledgersList,
      narration,
      priceListId,
      priceListName,
      discount,
      discountPercent,
      subTotal,
      grossTotal,
      discountinAmount,
      grandTotal,
      taxTotalAmount,
      otherLedgersTotal,
      cessAmount,
      currencyConversionRate,
      currency,
      ProjectId,
      AddedBy,
      AddedById,
      packedBy,
      DeliveryDate,
      DeliveryTime,
      CompletionProbability,
      CreditPeriod,
      completedTimeStamp,
      RevisionNo,
      ConvertedToSalesOrder,
      QuotationPrepared,
      QuotationDropped,
      QuotationDroppedReason,
      SalesmanID,
      TermsAndConditionsID,
      RequirementVoucherNo,
      Contact,
      LPO,
      BillingName,
      prevTransVouchers,
      roundOff,
      status,
      voucherType,
      isIGST,
      ManagerApprovalStatus,
      ClientApprovalStatus,
      NoOfCopies,
      ModeOfService,
      quantityTotal,
      BalanceAmount,
      PaidAmount,
      reference,
      Location,
      POCName,
      POCEmail,
      POCPhone,
      kotNumber,
      BillSplit,
      paymentSplit,
      advanceCash,
      balance,
      fromGodownName,
      toGodownName,
      fromGodownID,
      toGodownID,
      mapList,
      chequeEntry,
      isReconciled,
      reconciledOn,
      crTotal,
      drTotal,
      ledgersTotal,
      fromExternal,
      sendFlag,
      voucherToExport,
      TransactionId,
      action,
      CustomerExpectingDate,
      HashTags,
      purchaseLedger,
      LRNO,
      numBoxes,
      totalWeight,
      Origin,
      Currency,
      CurrencyConvRate,
      currencyDecimalPoint,
      isCoupled,
      shippingInfo,
      saveStatus,
    ];
  }

  num getItemCount(String itemID) {
    num val = 0;

    for (int i = 0; i < InventoryItems!.length; i++) {
      if (itemID == InventoryItems![i].BaseItem.Item_ID) {
        //! val += InventoryItems![i].BaseItem.quantity ?? 0;
      }
    }
    return val;
  }

//   void calculateVoucherSales() {
//     num subTotal = 0;
//     num vatTotal = 0;
//     num discountTotal = 0;
//     num grossTotal = 0;

//     Map<String, num> LedgersListTemp = {};

//     quantityTotal = 0;
//     totalWeight = 0;

//     bool isIGST = false;
//     /*
//     if(ledgerObject!.TRN!.length>2)
//         if(ledgerObject!.TRN.mid(0,2) != LoginValues::getCompany().trn.mid(0,2)){
//             isIGST = true;
//             qDebug()<<"IGST Billing";
//         }
// */
//     print('Leee');
//     print('Items le: ${InventoryItems!.length}');
//     for (int i = 0; i < InventoryItems!.length; i++) {
//       // num vatAmt = 0;
//       num vatamtBy_2 = 0;
//       // num taxRate = 0;
//       // num subT = 0;
//       // num grandTotolItem = 0;
//       // num itemCess = 0;
// //!                 //!
//       print('w : $totalWeight  q: ${InventoryItems![i].BaseItem.quantity}');
//       totalWeight = totalWeight! +
//           InventoryItems![i].BaseItem.quantity! *
//               InventoryItems![i].BaseItem.weight!;

//       quantityTotal = quantityTotal! + InventoryItems![i].BaseItem.quantity!;
//       final taxRate = InventoryItems![i].BaseItem.taxRate!;

//       // InventoryItems![i].BaseItem. crQty = InventoryItems![i].BaseItem.quantity;

//       InventoryItems![i].BaseItem.subTotal = InventoryItems![i].BaseItem.rate! *
//           InventoryItems![i].BaseItem.quantity!;

//       InventoryItems![i].BaseItem.grossTotal =
//           InventoryItems![i].BaseItem.subTotal! -
//               InventoryItems![i].BaseItem.discountinAmount!;

//       InventoryItems![i].BaseItem.taxAmount =
//           InventoryItems![i].BaseItem.grossTotal! *
//               InventoryItems![i].BaseItem.taxRate! /
//               100;

//       //        subT = InventoryItems[i].BaseItem.price *InventoryItems[i].BaseItem.quantity ;
//       // subT = (InventoryItems![i].BaseItem.rate!) *
//       //     InventoryItems![i].BaseItem.quantity!;

//       // grandTotolItem = subT - InventoryItems![i].BaseItem.discountinAmount!;

//       InventoryItems![i].BaseItem.grandTotal =
//           InventoryItems![i].BaseItem.grossTotal! +
//               InventoryItems![i].BaseItem.taxAmount!;

//       //        discountinAmount += InventoryItems[i].BaseItem.discountinAmount;

//       if (taxRate >= 0) {
//         // vatAmt = InventoryItems![i].BaseItem.grossTotal! * taxRate / 100;
//         vatamtBy_2 = InventoryItems![i].BaseItem.grossTotal! * taxRate / 200;
//         // vatAmt = num.parse(vatAmt.toStringAsFixed(2));
//       }

//       subTotal += InventoryItems![i].BaseItem.subTotal!;
//       grossTotal += InventoryItems![i].BaseItem.grandTotal!;

//       discountTotal += InventoryItems![i].BaseItem.discountinAmount!;
// //!                 //!
//       String SalesLedger = "";
//       String CGSTLedger = "";
//       String SGSTLedger = "";
//       String IGSTLedger = "";

//       if (taxRate == 0) {
//         SalesLedger = "0x7x3";
//       } else if (taxRate == 3) {
//         SalesLedger = "0x7xSV5";
//         CGSTLedger = "0x2x14xOCG15";
//         SGSTLedger = "0x2x14xOSG15";
//         if (isIGST) IGSTLedger = "0x2x14xOIG15";
//       } else if (taxRate == 5) {
//         SalesLedger = "0x7xSV5";
//         CGSTLedger = "0x2x14xOCG25";
//         SGSTLedger = "0x2x14xOSG25";
//         if (isIGST) IGSTLedger = "0x2x14xOIG25";
//       } else if (taxRate == 12) {
//         SalesLedger = "0x7xSV12";
//         CGSTLedger = "0x2x14xOCG6";
//         SGSTLedger = "0x2x14xOSG6";
//         if (isIGST) IGSTLedger = "0x2x14xOIG6";
//       } else if (taxRate == 18) {
//         SalesLedger = "0x7xSV18";
//         CGSTLedger = "0x2x14xOCG9";
//         SGSTLedger = "0x2x14xOSG9";
//         if (isIGST) IGSTLedger = "0x2x14xOIG9";
//       } else if (taxRate == 28) {
//         SalesLedger = "0x7xSV28";
//         CGSTLedger = "0x2x14xOCG14";
//         SGSTLedger = "0x2x14xOSG14";
//         if (isIGST) IGSTLedger = "0x2x14xOIG14";
//       }

//       //Sales Ledgers
//       if (LedgersListTemp.keys.contains(SalesLedger)) {
//         LedgersListTemp[SalesLedger] = LedgersListTemp[SalesLedger]! +
//             InventoryItems![i].BaseItem.grossTotal!;
//       } else {
//         if (SalesLedger.length > 0)
//           LedgersListTemp[SalesLedger] =
//               InventoryItems![i].BaseItem.grossTotal!;
//       }

//       if (isIGST) {
//         if (LedgersListTemp.keys.contains(IGSTLedger)) {
//           LedgersListTemp[IGSTLedger] = LedgersListTemp[IGSTLedger]! +
//               num.parse(
//                   InventoryItems![i].BaseItem.taxAmount!.toStringAsFixed(2));
//           vatTotal += num.parse(
//               InventoryItems![i].BaseItem.taxAmount!.toStringAsFixed(2));
//         } else {
//           if (IGSTLedger.length > 0) {
//             LedgersListTemp[IGSTLedger] = num.parse(
//                 InventoryItems![i].BaseItem.taxAmount!.toStringAsFixed(2));
//             vatTotal += num.parse(
//                 InventoryItems![i].BaseItem.taxAmount!.toStringAsFixed(2));
//           }
//         }
//       } else {
//         //CGST
//         if (LedgersListTemp.keys.contains(CGSTLedger)) {
//           LedgersListTemp[CGSTLedger] = LedgersListTemp[CGSTLedger]! +
//               num.parse(vatamtBy_2.toStringAsFixed(2));
//           //            qDebug()<<" Value : "<<LedgersListTemp[CGSTLedger];
//           //            qDebug()<<" Value(without ) : "<<vatAmt/2;
//           //            qDebug()<<" Vat/2 (without): "<<vatamtBy_2;
//           //            qDebug()<<" Vat/2 : "<<String::number(vatamtBy_2,'f',2).tonum();
//           vatTotal += num.parse(vatamtBy_2.toStringAsFixed(2));
//           ;
//         } else {
//           if (CGSTLedger.length > 0) {
//             LedgersListTemp[CGSTLedger] =
//                 num.parse(vatamtBy_2.toStringAsFixed(2));
//             vatTotal += num.parse(vatamtBy_2.toStringAsFixed(2));
//             //                qDebug()<<" Value : "<<LedgersListTemp[CGSTLedger];
//             //                qDebug()<<" Value(without ) : "<<vatAmt/2;
//             //                qDebug()<<" Vat/2 (without): "<<vatamtBy_2;
//             //                qDebug()<<" Vat/2 : "<<String::number(vatamtBy_2,'f',2).tonum();;
//             //                qDebug()<<"grand Total Item : "<<grandTotolItem;
//           }
//         }

//         //SGST
//         if (LedgersListTemp.keys.contains(SGSTLedger)) {
//           LedgersListTemp[SGSTLedger] = LedgersListTemp[SGSTLedger]! +
//               num.parse(vatamtBy_2.toStringAsFixed(2));
//           vatTotal += num.parse(vatamtBy_2.toStringAsFixed(2));
//         } else {
//           if (SGSTLedger.length > 0) {
//             LedgersListTemp[SGSTLedger] =
//                 num.parse(vatamtBy_2.toStringAsFixed(2));
//             vatTotal += num.parse(vatamtBy_2.toStringAsFixed(2));
//           }
//         }
//       }

//       //        // qDebug()<<"tax amt update"<<InventoryItems[i].BaseItem.taxAmount;
//       // InventoryItems![i].BaseItem.taxAmount = vatAmt.toDouble();
//       //        // qDebug()<<"tax amt updated to"<<InventoryItems[i].BaseItem.taxAmount;
//       // InventoryItems![i].BaseItem.grandTotal =
//       //     (grandTotolItem + vatAmt).toDouble();
//     }

//     discountinAmount = discountTotal.toDouble();
//     subTotal = subTotal;
//     grossTotal = subTotal - discountinAmount!;
//     taxTotalAmount = vatTotal.toDouble();

//     grandTotal = grossTotal + taxTotalAmount!;

//     //    // qDebug()<<"Grand Total : "<<grandTotal;

//     //    if(cessTotal > 0 && ledgerObject.TRN.length()<1 ){
//     //        LedgersListTemp["0x2x14xCess"] = cessAmount;
//     //    }
// //! comment
//     // for (int i = 0; i < ledgersList!.length; i++) {
//     //   if (ledgersList![i].isInvoiceItem!) {
//     //     //            qDebug()<<"removing from ledgerslist at "
//     //     //                   <<ledgersList[i].LedgerName<<Q_FUNC_INFO;
//     //     ledgersList.removeAt(i);
//     //     i--;
//     //   }
//     // }
//     //!
//     if (paymentSplit == false)
//       for (int i = 0; i < ledgersList.length; i++) {
//         //            // qDebug()<<" Total : "<<grandTotal << "Cr : "<<ledgersList[i].crAmount << "Dr : "<<ledgersList[i].drAmount;
//         grandTotal =
//             grandTotal! + ledgersList[i].crAmount! - ledgersList[i].drAmount!;
//       }

//     // QMapIterator<String,num>iterator(LedgersListTemp);

//     LedgersListTemp.keys.forEach((element) {
//       var val = LedgersListTemp[element]!.toDouble();
//       LedgerMasterHiveModel ledger = LedgerMasterHiveModel(
//         crAmount: val,
//         amount: val,
//         LEDGER_ID: element,
//         // isInvoiceItem: true,
//       );
//       ledgersList.add(ledger);
//     });

//     //    qDebug()<<"Ledger  List Length : "<<ledgersList.size();

//     //    for(LedgerMasterHiveModel obj:ledgersList){
//     //        // qDebug()<<obj.LedgerName<<obj.crAmount<<obj.drAmount;
//     //    }

//     //    // qDebug()<<"grand total"<<grandTotal<<grossTotal;

//     // double round = grandTotal!.roundToOne;
//     double round = grandTotal!;
//     roundOff = round - grandTotal!;

//     //    // qDebug()<<"Round off : "<<roundOff << "Total : "<<grandTotal;

//     LedgerMasterHiveModel roundledger = LedgerMasterHiveModel(
//       crAmount: roundOff! > 0 ? roundOff : 0,
//       drAmount: roundOff! > 0 ? 0 : roundOff,
//       LEDGER_ID: '0x12x11',
//       // isInvoiceItem: true,
//     );

//     if (roundOff != 0) {
//       ledgersList.add(
//           roundledger.copyWith(amount: roundOff, Ledger_Name: 'Round Off'));
//       grandTotal = grandTotal! + roundOff!;
//     }

//     BalanceAmount = grandTotal! - PaidAmount!;

//     //    // qDebug()<<"Grand Total : "<<grandTotal;
//     //    // qDebug()<<"Round Off: "<<roundOff;
//     //for(int i=0;i<ledgersList.size();i++){
//     //        // qDebug()<<"Ledger : "<<ledgersList[i].LedgerName;
//     //        // qDebug()<<"Cr Amount : "<<ledgersList[i].crAmount;
//     //        // qDebug()<<"Dr Amount : "<<ledgersList[i].drAmount;

//     // }
//     ledgerObject!.drAmount = grandTotal;
//     ledgerObject!.amount = grandTotal;
//     crTotal = 0;
//     drTotal = 0;

//     ledgersList.forEach((element) {
//       crTotal = crTotal! + element.crAmount!;
//       drTotal = drTotal! + element.drAmount!;
//     });
//   }

  // void calculateLedgerVoucher() {
  //   ledgersTotal = 0;
  //   crTotal = 0;
  //   drTotal = 0;

  //   double cTotal = 0;
  //   double lTotal = 0;
  //   double dTotal = 0;

  //   ledgersList.forEach((obj) {
  //     print(obj.crAmount);
  //     print('dr : ${obj.drAmount}');
  //     double c = obj.crAmount!;
  //     double d = obj.drAmount!;
  //     cTotal = cTotal + c;
  //     dTotal = dTotal + d;
  //   });

  //   ledgersTotal = dTotal - cTotal;
  //   grandTotal = ledgersTotal!.abs();
  //   print('Led Total : $grandTotal dr:  $drTotal cr: $crTotal');

  //   ledgerObject!.amount = grandTotal;
  // }

  // Map<String, dynamic> toMapForTransTest() {
  //   return {
  //     'Voucher_Date': VoucherDate?.millisecondsSinceEpoch,
  //     'Voucher_Prefix': VoucherPrefix,
  //     'Voucher_Type': voucherType,
  //     'Voucher_No': voucherNumber ?? '',
  //     'Narration': narration,
  //     'reference': reference,
  //     'POC_Phone': POCPhone,
  //     'DeliveryDate': DeliveryDate?.millisecondsSinceEpoch,
  //     'InventoryItems':
  //         InventoryItems?.map((e) => e.toMapForTransTest()).toList(),
  //     'ledgerObject': ledgerObject?.toMap(),
  //     'ledgersList': ledgersList.map((e) => e.toMap()).toList(),
  //     'Location': Location,
  //     'grandTotal': grandTotal,
  //     'grossTotal': grossTotal,
  //     'status': 110,
  //     'ModeOfService': ModeOfService,
  //     'PriceListId': priceListId,
  //     'vatAmount': taxTotalAmount,
  //     'BillingName': BillingName,
  //     'Salesman_ID': SalesmanID,
  //     'toGodownID': toGodownID,
  //     'fromGodownID': fromGodownID,
  //     'TransactionId': TransactionId,
  //     'RequirementVoucherNo': RequirementVoucherNo,
  //     'isHidden': false,
  //   };
  // }

  // factory GeneralVoucherDataModel.fromMapForTransTest(
  //     Map<String, dynamic> map) {
  //   // print('voucher : $map');

  //   // print(
  //   //     'Date is HERE : ${map['Voucher_Date']} as ${DateTime.fromMillisecondsSinceEpoch(int.parse(map['Voucher_Date'] ?? '0'))}');
  //   DateTime vDate = DateTime.fromMillisecondsSinceEpoch(
  //       int.parse(map['Voucher_Date'] ?? '0') * 1000);

  //   // print(
  //   //     'Timestamp  is HERE : ${map['TimeStamp']} as ${DateTime.fromMillisecondsSinceEpoch(int.parse(map['TimeStamp'] ?? '0'))}');

  //   // print('Led List : ${map['ledgersList']}');

  //   print('vat is ${map['vatAmount'].runtimeType}');

  //   GeneralVoucherDataModel v = GeneralVoucherDataModel(
  //     voucherNumber: map['Voucher_No'],
  //     timestamp: DateTime.fromMillisecondsSinceEpoch(
  //         int.parse(map['TimeStamp'] ?? '0') * 1000),
  //     VoucherDate: vDate,
  //     VoucherPrefix: map['Voucher_Prefix'],
  //     InventoryItems: map['InventoryItems'] != null
  //         ? List<CompoundItemDataModel>.from(
  //             map['InventoryItems']?.map(
  //               (x) => CompoundItemDataModel.fromMapForTransTest(x),
  //             ),
  //           )
  //         : [],
  //     narration: map['Narration'] ?? '',
  //     voucherType: map['Voucher_Type'],
  //     grandTotal: double.parse(map['grandTotal'] ?? "0"),
  //     grossTotal: double.parse(map['grossTotal'] ?? "0"),
  //     paymentSplit: map['paymentSplit'] ?? false,
  //     // taxTotalAmount: ,
  //     TransactionId: map['TransactionId'] ?? "",
  //     RequirementVoucherNo: map['RequirementVoucherNo'] ?? '',
  //     POCPhone: map['POC_Phone'] ?? '',
  //     Location: map['Location'] ?? '',
  //     DeliveryDate: DateTime.fromMillisecondsSinceEpoch(
  //         int.parse(map['DeliveryDate'] ?? '0') * 1000),
  //     ledgerObject: LedgerMasterHiveModel.fromMap(map['ledgerObject']),
  //     status: map['voucherstatus'],
  //     ModeOfService: int.parse(map['ModeOfService'] ?? '0') ?? 0,
  //     priceListId: int.parse(map['ModeOfService'] ?? '0') ?? 0,
  //     taxTotalAmount: double.parse(map['vatAmount'] ?? '0') ?? 0,
  //     BillingName: map['BillingName'] ?? '',
  //     SalesmanID: int.parse(map['Salesman_ID'] ?? '0'),
  //     ledgersList: (map['ledgersList'] == null)
  //         ? []
  //         : List<LedgerMasterHiveModel>.from(
  //             map['ledgersList']?.map(
  //               (x) => LedgerMasterHiveModel.fromMap(x),
  //             ),
  //           ),
  //     toGodownID: map['toGodownID'] ?? '',
  //     fromGodownID: map['fromGodownID'] ?? '',
  //     // isHidden: int.parse(map['isHidden']) == 1 ? true : false,

  //     reference: map['reference'] ?? '',
  //   );

  //   print('returning VouCher : ${v.voucherNumber}');

  //   return v;
  // }
}

enum SaveStatus {
  ready,
  reading,
  readComplete,
  saving,
  saved,
  saveerror,
}
