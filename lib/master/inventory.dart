import 'dart:convert';
import 'package:datamodelpackage/master/BOMDataModel.dart';
import 'package:datamodelpackage/master/BatchDataModel.dart';
import 'package:datamodelpackage/master/UOMDataModelObsolete.dart';
import 'package:datamodelpackage/master/itemgodowndatamodel.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
part 'inventory.g.dart';

@HiveType(typeId: 14)
class InventoryItemData extends HiveObject with EquatableMixin {
  @HiveField(1)
  final String? ItemNameArabic;
  @HiveField(2)
  final double? stdRate;
  @HiveField(3)
  final double? rate;
  @HiveField(4)
  final double? priceLastPurchase;
  @HiveField(5)
  final double? moq;
  @HiveField(6)
  final String? defaultSalesLedgerID;
  @HiveField(7)
  final String? defaultPurchaseLedgerID;
  @HiveField(8)
  final String? brandName;
  @HiveField(9)
  final double? taxRate;
  @HiveField(10)
  final String? defaultUOMID;
  @HiveField(11)
  final String? createdBy;
  @HiveField(12)
  List<BOMDataModel>? bomList;
  @HiveField(13)
  final double? length;
  @HiveField(14)
  final bool? IsCompoundItem;
  @HiveField(15)
  final bool? isSerailNumbered;
  @HiveField(16)
  final bool? isBatchProcessed;
  @HiveField(17)
  final bool? removeItem;
  @HiveField(18)
  final bool? isService;
  @HiveField(19)
  final bool? isProductionItem;
  @HiveField(20)
  final bool? setPriceBatchwise;
  @HiveField(21)
  final bool? isPerishable;
  @HiveField(22)
  final String? DefaultInputTaxLedgerID;
  @HiveField(23)
  final String? DefaultOutputTaxLedgerID;
  @HiveField(24)
  final String? DefaultSalesReturnLedgerID;
  @HiveField(25)
  final String? DefaultPurchaseReturnLedgerID;
  @HiveField(26)
  final String? location;
  @HiveField(27)
  final double? weight;
  @HiveField(28)
  final int? TaxClassID;
  @HiveField(29)
  final double? discount;
  @HiveField(30)
  double? discountinAmount;
  @HiveField(31)
  double? discountPercentage;
  @HiveField(32)
  double? subtotal;
  @HiveField(33)
  double? grossTotal;
  @HiveField(34)
  double? grandTotal;
  @HiveField(35)
  final String? ItemReqUuid;
  @HiveField(36)
  final int? listId;
  @HiveField(37)
  final String? fromGodownID;
  @HiveField(38)
  final String? toGodownID;
  @HiveField(39)
  List<ItemGodownDataModel>? godownList;
  @HiveField(40)
  List<BatchDataModel>? batchList;
  @HiveField(41)
  final String? PriceLevel;
  @HiveField(42)
  final String? ProjectID;
  @HiveField(43)
  double? taxAmount;
  @HiveField(44)
  final String? priceListID;
  @HiveField(45)
  final String? priceListName;
  @HiveField(46)
  final bool? itemPriceEditted;
  @HiveField(47)
  final int? itemProductionStatus;
  @HiveField(48)
  final int? itemVoucherStatus;
  @HiveField(49)
  final int? TechnicianID;
  @HiveField(50)
  final double? drQty;
  @HiveField(51)
  final double? crQty;
  @HiveField(52)
  final double? consumedQty;
  @HiveField(53)
  final double? orderedQty;
  @HiveField(54)
  final double? quantity;
  @HiveField(55)
  final double? maxQuantity;
  @HiveField(56)
  final double? calculatedQty;
  @HiveField(57)
  final double? requestQty;
  @HiveField(58)
  final double? prevQty;
  @HiveField(59)
  final double? currQty;
  @HiveField(60)
  final double? billedQty;
  @HiveField(61)
  final double? actualQty;
  @HiveField(62)
  final bool? fromExternal;
  @HiveField(63)
  final int? action;
  @HiveField(64)
  final DateTime? orderCompletedDate;
  @HiveField(65)
  final DateTime? manufactureDate;
  @HiveField(66)
  final DateTime? expiry;
  InventoryItemData({
    this.ItemNameArabic,
    this.stdRate,
    this.rate = 0,
    this.priceLastPurchase,
    this.discount = 0,
    this.discountinAmount = 0,
    this.discountPercentage = 0,
    this.subtotal = 0,
    this.grossTotal = 0,
    this.grandTotal = 0,
    this.moq,
    this.ItemReqUuid,
    this.listId,
    this.fromGodownID,
    this.toGodownID,
    this.godownList,
    this.batchList,
    this.PriceLevel,
    this.defaultSalesLedgerID,
    this.defaultPurchaseLedgerID,
    this.ProjectID,
    this.brandName,
    this.taxRate,
    this.taxAmount,
    this.defaultUOMID,
    this.priceListID,
    this.priceListName,
    this.createdBy,
    this.bomList,
    this.length,
    this.IsCompoundItem,
    this.isSerailNumbered,
    this.isBatchProcessed,
    this.removeItem,
    this.isService,
    this.isProductionItem,
    this.setPriceBatchwise,
    this.isPerishable,
    this.itemPriceEditted,
    this.itemProductionStatus,
    this.itemVoucherStatus,
    this.DefaultInputTaxLedgerID,
    this.DefaultOutputTaxLedgerID,
    this.DefaultSalesReturnLedgerID,
    this.DefaultPurchaseReturnLedgerID,
    this.TaxClassID,
    this.TechnicianID,
    this.drQty = 0,
    this.crQty = 0,
    this.consumedQty = 0,
    this.orderedQty = 0,
    this.quantity = 0,
    this.maxQuantity = 0,
    this.calculatedQty,
    this.requestQty,
    this.prevQty,
    this.currQty,
    this.billedQty,
    this.actualQty,
    this.fromExternal,
    this.action,
    this.orderCompletedDate,
    this.manufactureDate,
    this.expiry,
    this.location,
    this.weight = 0,
  });

  InventoryItemData copyWith({
    String? ItemName,
    String? ItemNameArabic,
    String? GroupName,
    String? GroupID,
    String? ItemID,
    String? ItemAlias,
    String? ItemCode,
    String? narration,
    double? stdCost,
    String? Dimension,
    // double? price = 0,
    double? rate,
    double? price_1,
    double? price_2,
    double? priceLastPurchase,
    double? discount,
    double? discountinAmount,
    double? discountPercentage,
    double? subTotal,
    double? grossTotal,
    double? grandTotal,
    double? moq,
    String? ItemReqUuid,
    int? listId,
    String? fromGodownID,
    String? toGodownID,
    List<ItemGodownDataModel>? godownList,
    List<BatchDataModel>? batchList,
    String? PriceLevel,
    String? PartNumber,
    String? SerailNumber,
    double? OpeningStock,
    double? ClosingStock,
    DateTime? OpeningStockDate,
    double? OpeningStockValue,
    double? OpeningStockPrice,
    double? ReorderLevel,
    String? defaultSalesLedgerID,
    String? defaultPurchaseLedgerID,
    String? ProjectID,
    int? brandID,
    String? brandName,
    double? taxRate,
    double? taxAmount,
    String? defaultUOMID,
    UOMHiveMOdel? uomObject,
    String? priceListID,
    String? priceListName,
    DateTime? lastModified,
    DateTime? dateCreated,
    DateTime? fromTime,
    DateTime? toTime,
    String? createdBy,
    List<BOMDataModel>? bomList,
    String? ItemDescription,
    double? length,
    int? warrantyDays,
    double? shelfLife,
    bool? IsCompoundItem,
    bool? isCustomItem,
    bool? isPurchaseItem,
    bool? isSalesItem,
    bool? isSerailNumbered,
    bool? isBatchProcessed,
    bool? removeItem,
    bool? isService,
    bool? isProductionItem,
    bool? setPriceBatchwise,
    bool? isPerishable,
    bool? favo,
    bool? itemPriceEditted,
    String? KOTPrinter,
    int? itemProductionStatus,
    int? itemVoucherStatus,
    String? DefaultInputTaxLedgerID,
    String? DefaultOutputTaxLedgerID,
    String? DefaultSalesReturnLedgerID,
    String? DefaultPurchaseReturnLedgerID,
    int? TaxClassID,
    int? TechnicianID,
    double? drQty,
    double? crQty,
    double? consumedQty,
    double? orderedQty,
    double? quantity,
    double? maxQuantity,
    double? calculatedQty,
    double? requestQty,
    double? prevQty,
    double? currQty,
    double? discQuantity,
    double? quantityFull,
    String? hsnCode,
    String? section,
    Map? flags,
    int? salesmanID,
    bool? fromExternal,
    int? action,
    DateTime? orderCompletedDate,
    DateTime? manufactureDate,
    DateTime? expiry,
    bool? isStockItem,
    String? category,
    String? defaultLedgerId,
    String? location,
    double? weight,
  }) {
    return InventoryItemData(
      ItemNameArabic: ItemNameArabic ?? this.ItemNameArabic,
      stdRate: rate ?? this.stdRate,
      rate: rate ?? this.rate,
      priceLastPurchase: priceLastPurchase ?? this.priceLastPurchase,
      discount: discount ?? this.discount,
      discountinAmount: discountinAmount ?? this.discountinAmount,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      subtotal: subtotal ?? this.subtotal,
      grossTotal: grossTotal ?? this.grossTotal,
      grandTotal: grandTotal ?? this.grandTotal,
      moq: moq ?? this.moq,
      ItemReqUuid: ItemReqUuid ?? this.ItemReqUuid,
      listId: listId ?? this.listId,
      fromGodownID: fromGodownID ?? this.fromGodownID,
      toGodownID: toGodownID ?? this.toGodownID,
      godownList: godownList ?? this.godownList,
      batchList: batchList ?? this.batchList,
      PriceLevel: PriceLevel ?? this.PriceLevel,
      defaultSalesLedgerID: defaultSalesLedgerID ?? this.defaultSalesLedgerID,
      defaultPurchaseLedgerID:
          defaultPurchaseLedgerID ?? this.defaultPurchaseLedgerID,
      ProjectID: ProjectID ?? this.ProjectID,
      brandName: brandName ?? this.brandName,
      taxRate: taxRate ?? this.taxRate,
      taxAmount: taxAmount ?? this.taxAmount,
      defaultUOMID: defaultUOMID ?? this.defaultUOMID,
      priceListID: priceListID ?? this.priceListID,
      priceListName: priceListName ?? this.priceListName,
      createdBy: createdBy ?? this.createdBy,
      bomList: bomList ?? this.bomList,
      length: length ?? this.length,
      IsCompoundItem: IsCompoundItem ?? this.IsCompoundItem,
      isSerailNumbered: isSerailNumbered ?? this.isSerailNumbered,
      isBatchProcessed: isBatchProcessed ?? this.isBatchProcessed,
      removeItem: removeItem ?? this.removeItem,
      isService: isService ?? this.isService,
      isProductionItem: isProductionItem ?? this.isProductionItem,
      setPriceBatchwise: setPriceBatchwise ?? this.setPriceBatchwise,
      isPerishable: isPerishable ?? this.isPerishable,
      itemPriceEditted: itemPriceEditted ?? this.itemPriceEditted,
      itemProductionStatus: itemProductionStatus ?? this.itemProductionStatus,
      itemVoucherStatus: itemVoucherStatus ?? this.itemVoucherStatus,
      DefaultInputTaxLedgerID:
          DefaultInputTaxLedgerID ?? this.DefaultInputTaxLedgerID,
      DefaultOutputTaxLedgerID:
          DefaultOutputTaxLedgerID ?? this.DefaultOutputTaxLedgerID,
      DefaultSalesReturnLedgerID:
          DefaultSalesReturnLedgerID ?? this.DefaultSalesReturnLedgerID,
      DefaultPurchaseReturnLedgerID:
          DefaultPurchaseReturnLedgerID ?? this.DefaultPurchaseReturnLedgerID,
      TaxClassID: TaxClassID ?? this.TaxClassID,
      TechnicianID: TechnicianID ?? this.TechnicianID,
      drQty: drQty ?? this.drQty,
      crQty: crQty ?? this.crQty,
      consumedQty: consumedQty ?? this.consumedQty,
      orderedQty: orderedQty ?? this.orderedQty,
      quantity: quantity ?? this.quantity,
      maxQuantity: maxQuantity ?? this.maxQuantity,
      calculatedQty: calculatedQty ?? this.calculatedQty,
      requestQty: requestQty ?? this.requestQty,
      prevQty: prevQty ?? this.prevQty,
      currQty: currQty ?? this.currQty,
      billedQty: discQuantity ?? this.billedQty,
      actualQty: quantityFull ?? this.actualQty,
      fromExternal: fromExternal ?? this.fromExternal,
      action: action ?? this.action,
      orderCompletedDate: orderCompletedDate ?? this.orderCompletedDate,
      manufactureDate: manufactureDate ?? this.manufactureDate,
      expiry: expiry ?? this.expiry,
      location: location ?? this.location,
      weight: weight ?? this.weight,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'ItemNameArabic': ItemNameArabic,
      'price': rate,
      'price_1': rate,
      'priceLastPurchase': priceLastPurchase,
      'discount': discount,
      'discountinAmount': discountinAmount,
      'discountPercentage': discountPercentage,
      'subTotal': subtotal,
      'grandTotal': grandTotal,
      'moq': moq,
      'ItemReqUuid': ItemReqUuid,
      'listId': listId,
      'fromGodownID': fromGodownID,
      'toGodownID': toGodownID,
      'godownList': godownList?.map((x) => x.toMap()).toList(),
      'batchList': batchList?.map((x) => x.toMap()).toList(),
      'PriceLevel': PriceLevel,
      'defaultSalesLedgerID': defaultSalesLedgerID,
      'defaultPurchaseLedgerID': defaultPurchaseLedgerID,
      'ProjectID': ProjectID,
      'brandName': brandName,
      'taxRate': taxRate,
      'taxAmount': taxAmount,
      'defaultUOMID': defaultUOMID,
      'priceListID': priceListID,
      'priceListName': priceListName,
      'createdBy': createdBy,
      'bomList': bomList?.map((x) => x.toMap()).toList(),
      'length': length,
      'IsCompoundItem': IsCompoundItem,
      'isSerailNumbered': isSerailNumbered,
      'isBatchProcessed': isBatchProcessed,
      'removeItem': removeItem,
      'isService': isService,
      'isProductionItem': isProductionItem,
      'setPriceBatchwise': setPriceBatchwise,
      'isPerishable': isPerishable,
      'itemPriceEditted': itemPriceEditted,
      'itemProductionStatus': itemProductionStatus,
      'itemVoucherStatus': itemVoucherStatus,
      'DefaultInputTaxLedgerID': DefaultInputTaxLedgerID,
      'DefaultOutputTaxLedgerID': DefaultOutputTaxLedgerID,
      'DefaultSalesReturnLedgerID': DefaultSalesReturnLedgerID,
      'DefaultPurchaseReturnLedgerID': DefaultPurchaseReturnLedgerID,
      'TaxClassID': TaxClassID,
      'TechnicianID': TechnicianID,
      'drQty': drQty,
      'crQty': crQty,
      'consumedQty': consumedQty,
      'orderedQty': orderedQty,
      'quantity': quantity,
      'maxQuantity': maxQuantity,
      'calculatedQty': calculatedQty,
      'requestQty': requestQty,
      'prevQty': prevQty,
      'currQty': currQty,
      'discQuantity': billedQty,
      'quantityFull': actualQty,
      'fromExternal': fromExternal,
      'action': action,
      'orderCompletedDate': orderCompletedDate?.millisecondsSinceEpoch,
      'manufactureDate': manufactureDate?.millisecondsSinceEpoch,
      'expiry': expiry?.millisecondsSinceEpoch,
      'location': location,
      'weight': weight,
    };
  }

  factory InventoryItemData.fromMap(Map<String, dynamic> map) {
    return InventoryItemData(
      ItemNameArabic: map['ItemNameArabic'],
      stdRate: map['price']?.toDouble(),
      rate: map['price']?.toDouble(),
      priceLastPurchase: map['priceLastPurchase']?.toDouble(),
      discount: map['discount']?.toDouble(),
      discountinAmount: map['discountinAmount']?.toDouble(),
      discountPercentage: map['discountPercentage']?.toDouble(),
      subtotal: map['subTotal']?.toDouble(),
      grandTotal: map['grandTotal']?.toDouble(),
      moq: map['moq']?.toDouble(),
      ItemReqUuid: map['ItemReqUuid'],
      listId: map['listId']?.toInt(),
      fromGodownID: map['fromGodownID'],
      toGodownID: map['toGodownID'],
      godownList: List<ItemGodownDataModel>.from(
          map['godownList']?.map((x) => ItemGodownDataModel.fromMap(x))),
      batchList: List<BatchDataModel>.from(
          map['batchList']?.map((x) => BatchDataModel.fromMap(x))),
      PriceLevel: map['PriceLevel'],
      defaultSalesLedgerID: map['defaultSalesLedgerID'],
      defaultPurchaseLedgerID: map['defaultPurchaseLedgerID'],
      ProjectID: map['ProjectID'],
      brandName: map['brandName'],
      taxRate: map['taxRate']?.toDouble(),
      taxAmount: map['taxAmount']?.toDouble(),
      defaultUOMID: map['defaultUOMID'],
      priceListID: map['priceListID'],
      priceListName: map['priceListName'],
      createdBy: map['createdBy'],
      bomList: List<BOMDataModel>.from(
          map['bomList']?.map((x) => BOMDataModel.fromMap(x))),
      length: map['length']?.toDouble(),
      IsCompoundItem: map['IsCompoundItem'],
      isSerailNumbered: map['isSerailNumbered'],
      isBatchProcessed: map['isBatchProcessed'],
      removeItem: map['removeItem'],
      isService: map['isService'],
      isProductionItem: map['isProductionItem'],
      setPriceBatchwise: map['setPriceBatchwise'],
      isPerishable: map['isPerishable'],
      itemPriceEditted: map['itemPriceEditted'],
      itemProductionStatus: map['itemProductionStatus']?.toInt(),
      itemVoucherStatus: map['itemVoucherStatus']?.toInt(),
      DefaultInputTaxLedgerID: map['DefaultInputTaxLedgerID'],
      DefaultOutputTaxLedgerID: map['DefaultOutputTaxLedgerID'],
      DefaultSalesReturnLedgerID: map['DefaultSalesReturnLedgerID'],
      DefaultPurchaseReturnLedgerID: map['DefaultPurchaseReturnLedgerID'],
      TaxClassID: map['TaxClassID']?.toInt(),
      TechnicianID: map['TechnicianID']?.toInt(),
      drQty: map['drQty']?.toDouble(),
      crQty: map['crQty']?.toDouble(),
      consumedQty: map['consumedQty']?.toDouble(),
      orderedQty: map['orderedQty']?.toDouble(),
      quantity: map['quantity']?.toDouble(),
      maxQuantity: map['maxQuantity']?.toDouble(),
      calculatedQty: map['calculatedQty']?.toDouble(),
      requestQty: map['requestQty']?.toDouble(),
      prevQty: map['prevQty']?.toDouble(),
      currQty: map['currQty']?.toDouble(),
      billedQty: map['discQuantity']?.toDouble(),
      actualQty: map['quantityFull']?.toDouble(),
      fromExternal: map['fromExternal'],
      action: map['action']?.toInt(),
      orderCompletedDate: map['orderCompletedDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['orderCompletedDate'])
          : null,
      manufactureDate: map['manufactureDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['manufactureDate'])
          : null,
      expiry: map['expiry'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['expiry'])
          : null,
      location: map['location'],
      weight: map['weight']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory InventoryItemData.fromJson(String source) =>
      InventoryItemData.fromMap(json.decode(source));

  @override
  List<Object?> get props {
    return [
      ItemNameArabic,
      stdRate,
      rate,
      priceLastPurchase,
      discount,
      discountinAmount,
      discountPercentage,
      subtotal,
      grandTotal,
      moq,
      ItemReqUuid,
      listId,
      fromGodownID,
      toGodownID,
      godownList,
      batchList,
      PriceLevel,
      defaultSalesLedgerID,
      defaultPurchaseLedgerID,
      ProjectID,
      brandName,
      taxRate,
      taxAmount,
      defaultUOMID,
      priceListID,
      priceListName,
      createdBy,
      bomList,
      length,
      IsCompoundItem,
      isSerailNumbered,
      isBatchProcessed,
      removeItem,
      isService,
      isProductionItem,
      setPriceBatchwise,
      isPerishable,
      itemPriceEditted,
      itemProductionStatus,
      itemVoucherStatus,
      DefaultInputTaxLedgerID,
      DefaultOutputTaxLedgerID,
      DefaultSalesReturnLedgerID,
      DefaultPurchaseReturnLedgerID,
      TaxClassID,
      TechnicianID,
      drQty,
      crQty,
      consumedQty,
      orderedQty,
      quantity,
      maxQuantity,
      calculatedQty,
      requestQty,
      prevQty,
      currQty,
      billedQty,
      actualQty,
      fromExternal,
      action,
      orderCompletedDate,
      manufactureDate,
      expiry,
      location,
      weight,
    ];
  }

  // void calculate() {
  //   subTotal = rate! * quantity! * uomObject!.convRate!;
  //   grossTotal = subTotal! - discountinAmount!;
  //   taxAmount = grossTotal! * taxRate! / 100;
  //   grandTotal = grossTotal! + taxAmount!;
  // }

  Map<String, dynamic> toMapForTransTest() {
    // print('uomObject is $uomObject');
    return {
      'drQty': drQty,
      'crQty': crQty,
      'Quantity': quantity,
      'Price': rate,
      //subtotal changed
      'subTotal': subtotal,
      'Requirement_ItemID': 'X',
      'Vat_Rate': taxRate,
      'vatAmount': taxAmount,
      'discountPercentage': discountPercentage,
      'discountinAmount': discountinAmount,

      'IsCompoundItem': false,
    };
  }

  // factory InventoryItemDataModel.fromMapForTransTest(
  //     Map<String, dynamic>? map) {
  //   if (map == null) return InventoryItemDataModel();
  //   // print(
  //   //     'Item  ID is being converted : $map at qty : ${map['Quantity']} total : ${map['']}');

  //   InventoryItemDataModel item = InventoryItemDataModel(
  //     ItemID: map['Item_ID'],
  //     ItemName: map['Item_Name'] ?? '',
  //     drQty: double.parse(map['drQty'] ?? '0'),
  //     crQty: double.parse(map['crQty'] ?? '0'),
  //     quantity: double.parse(map['Quantity'] ?? '0'),
  //     rate: double.parse(map['Price'] ?? '0'),
  //     taxRate: double.parse(map['Vat_Rate'] ?? '0'),
  //     subTotal: double.parse(map['subTotal'] ?? '0'),
  //     taxAmount: double.parse(map['vatAmount'] ?? '0'),
  //     discountinAmount: double.parse(map['discountinAmount'] ?? '0'),
  //     discountPercentage: double.parse(map['discountPercentage'] ?? '0'),
  //     narration: (map['Narration'] ?? '0'),
  //     GroupName: (map['GroupName']) ?? '0',
  //     ClosingStock: double.parse(map['ClosingStock'] ?? '0'),
  //     PartNumber: map['PartNumber'],
  //     Dimension: map['Dimension'],
  //     price_2: double.parse(map['Price_2'] ?? '0'),
  //     ItemReqUuid: map['Requirement_ItemID'] ?? 'X',

  //     uomObject: UOMHiveMOdel.fromMapTrans(
  //         map['uomObject'] ?? map['UOMList'][0]), // Changed for Voucher Get
  //   );
  //   print('Item Converted');
  //   return item;
  // }

  // factory InventoryItemDataModel.fromHive(InventoryItemHive item) {
  //   print(' Item UOm : ${item.uomObjects}');
  //   print(item.uomObjects[0]);
  //   return InventoryItemDataModel(
  //     ItemID: item.Item_ID,
  //     ItemName: item.Item_Name,
  //     taxRate: item.Vat_Rate,
  //     GroupID: item.Group_Id,
  //     GroupName: item.Group_Name,
  //     uomObject: item.uomObjects[0],
  //     defaultUOMID: item.Default_UOM_ID.toString(),
  //     rate: item.Price,
  //     crQty: 0,
  //     drQty: 0,
  //     quantity: 0,
  //     ItemReqUuid: Uuid().v1(),
  //   );
  // }
}
