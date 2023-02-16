import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
part 'BatchDataModel.g.dart';
@HiveType(typeId: 1)
class BatchDataModel extends HiveObject with EquatableMixin {
  @HiveField(0)
  final String? itemID;
  @HiveField(1)
  final String? itemReqId;
  @HiveField(2)
  final String? SKUID;
  @HiveField(3)
  final String? batchNo;
  @HiveField(4)
  final String? batchName;
  @HiveField(5)
  final String? serialNoFrom;
  @HiveField(6)
  final String? serialNoTo;
  @HiveField(7)
  final String? serialSuffix;
  @HiveField(8)
  final String? serialPrefix;
  @HiveField(9)
  final String? VoucherNo;
  @HiveField(10)
  final String? VoucherType;
  @HiveField(11)
  final String? VoucherPrefix;
  @HiveField(12)
  final String? RefNo;
  @HiveField(13)
  final String? RefType;
  @HiveField(14)
  final String? RefPrefix;
  @HiveField(15)
  final DateTime? voucherDate;
  @HiveField(16)
  final DateTime? MfgDate;
  @HiveField(17)
  final DateTime? ExpiryDate;
  @HiveField(18)
  final String? shelfLife;
  @HiveField(19)
  final double? purchaseCost;
  @HiveField(20)
  final double? sellingPrice;
  @HiveField(21)
  final double? crQty;
  @HiveField(22)
  final double? drQty;
  @HiveField(23)
  final String? uom;
  @HiveField(24)
  BatchDataModel({
    this.itemID,
    this.itemReqId,
    this.SKUID,
    this.batchNo,
    this.batchName,
    this.serialNoFrom,
    this.serialNoTo,
    this.serialSuffix,
    this.serialPrefix,
    this.VoucherNo,
    this.VoucherType,
    this.VoucherPrefix,
    this.RefNo,
    this.RefType,
    this.RefPrefix,
    this.voucherDate,
    this.MfgDate,
    this.ExpiryDate,
    this.shelfLife,
    this.purchaseCost,
    this.sellingPrice,
    this.crQty,
    this.drQty,
    this.uom,
  });

  BatchDataModel copyWith({
    String? itemID,
    String? itemReqId,
    String? SKUID,
    String? batchNo,
    String? batchName,
    String? serialNoFrom,
    String? serialNoTo,
    String? serialSuffix,
    String? serialPrefix,
    String? VoucherNo,
    String? VoucherType,
    String? VoucherPrefix,
    String? RefNo,
    String? RefType,
    String? RefPrefix,
    DateTime? voucherDate,
    DateTime? MfgDate,
    DateTime? ExpiryDate,
    String? shelfLife,
    double? purchaseCost,
    double? sellingPrice,
    double? crQty,
    double? drQty,
    String? uom,
  }) {
    return BatchDataModel(
      itemID: itemID ?? this.itemID,
      itemReqId: itemReqId ?? this.itemReqId,
      SKUID: SKUID ?? this.SKUID,
      batchNo: batchNo ?? this.batchNo,
      batchName: batchName ?? this.batchName,
      serialNoFrom: serialNoFrom ?? this.serialNoFrom,
      serialNoTo: serialNoTo ?? this.serialNoTo,
      serialSuffix: serialSuffix ?? this.serialSuffix,
      serialPrefix: serialPrefix ?? this.serialPrefix,
      VoucherNo: VoucherNo ?? this.VoucherNo,
      VoucherType: VoucherType ?? this.VoucherType,
      VoucherPrefix: VoucherPrefix ?? this.VoucherPrefix,
      RefNo: RefNo ?? this.RefNo,
      RefType: RefType ?? this.RefType,
      RefPrefix: RefPrefix ?? this.RefPrefix,
      voucherDate: voucherDate ?? this.voucherDate,
      MfgDate: MfgDate ?? this.MfgDate,
      ExpiryDate: ExpiryDate ?? this.ExpiryDate,
      shelfLife: shelfLife ?? this.shelfLife,
      purchaseCost: purchaseCost ?? this.purchaseCost,
      sellingPrice: sellingPrice ?? this.sellingPrice,
      crQty: crQty ?? this.crQty,
      drQty: drQty ?? this.drQty,
      uom: uom ?? this.uom,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'itemID': itemID,
      'itemReqId': itemReqId,
      'SKUID': SKUID,
      'batchNo': batchNo,
      'batchName': batchName,
      'serialNoFrom': serialNoFrom,
      'serialNoTo': serialNoTo,
      'serialSuffix': serialSuffix,
      'serialPrefix': serialPrefix,
      'VoucherNo': VoucherNo,
      'VoucherType': VoucherType,
      'VoucherPrefix': VoucherPrefix,
      'RefNo': RefNo,
      'RefType': RefType,
      'RefPrefix': RefPrefix,
      'voucherDate': voucherDate?.millisecondsSinceEpoch,
      'MfgDate': MfgDate?.millisecondsSinceEpoch,
      'ExpiryDate': ExpiryDate?.millisecondsSinceEpoch,
      'shelfLife': shelfLife,
      'purchaseCost': purchaseCost,
      'sellingPrice': sellingPrice,
      'crQty': crQty,
      'drQty': drQty,
      'uom': uom,
    };
  }

  factory BatchDataModel.fromMap(Map<String, dynamic> map) {
    return BatchDataModel(
      itemID: map['itemID'],
      itemReqId: map['itemReqId'],
      SKUID: map['SKUID'],
      batchNo: map['batchNo'],
      batchName: map['batchName'],
      serialNoFrom: map['serialNoFrom'],
      serialNoTo: map['serialNoTo'],
      serialSuffix: map['serialSuffix'],
      serialPrefix: map['serialPrefix'],
      VoucherNo: map['VoucherNo'],
      VoucherType: map['VoucherType'],
      VoucherPrefix: map['VoucherPrefix'],
      RefNo: map['RefNo'],
      RefType: map['RefType'],
      RefPrefix: map['RefPrefix'],
      voucherDate: map['voucherDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['voucherDate'])
          : null,
      MfgDate: map['MfgDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['MfgDate'])
          : null,
      ExpiryDate: map['ExpiryDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['ExpiryDate'])
          : null,
      shelfLife: map['shelfLife'],
      purchaseCost: map['purchaseCost']?.toDouble(),
      sellingPrice: map['sellingPrice']?.toDouble(),
      crQty: map['crQty']?.toDouble(),
      drQty: map['drQty']?.toDouble(),
      uom: map['uom'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BatchDataModel.fromJson(String source) =>
      BatchDataModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BatchDataModel(itemID: $itemID, itemReqId: $itemReqId, SKUID: $SKUID, batchNo: $batchNo, batchName: $batchName, serialNoFrom: $serialNoFrom, serialNoTo: $serialNoTo, serialSuffix: $serialSuffix, serialPrefix: $serialPrefix, VoucherNo: $VoucherNo, VoucherType: $VoucherType, VoucherPrefix: $VoucherPrefix, RefNo: $RefNo, RefType: $RefType, RefPrefix: $RefPrefix, voucherDate: $voucherDate, MfgDate: $MfgDate, ExpiryDate: $ExpiryDate, shelfLife: $shelfLife, purchaseCost: $purchaseCost, sellingPrice: $sellingPrice, crQty: $crQty, drQty: $drQty, uom: $uom)';
  }

  @override
  List<Object?> get props {
    return [
      itemID,
      itemReqId,
      SKUID,
      batchNo,
      batchName,
      serialNoFrom,
      serialNoTo,
      serialSuffix,
      serialPrefix,
      VoucherNo,
      VoucherType,
      VoucherPrefix,
      RefNo,
      RefType,
      RefPrefix,
      voucherDate,
      MfgDate,
      ExpiryDate,
      shelfLife,
      purchaseCost,
      sellingPrice,
      crQty,
      drQty,
      uom,
    ];
  }
}
