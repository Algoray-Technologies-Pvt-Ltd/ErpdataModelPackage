import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
part 'BOMDataModel.g.dart';

@HiveType(typeId: 3)
class BOMDataModel extends HiveObject with EquatableMixin {
  @HiveField(0)
  final String? SalesItem;
  @HiveField(1)
  final double? SalesItemQty;
  @HiveField(2)
  final String? PurchaseItem;
  @HiveField(3)
  final String? PurchaseItemName;
  @HiveField(4)
  final double? PurchaseItemQty;
  @HiveField(5)
  final String? PurchaseUom;
  @HiveField(6)
  final double? conValue;
  @HiveField(7)
  final String? purchaseItemSection;
  @HiveField(8)
  final String? RouteID;
  @HiveField(9)
  final double? pRate;
  BOMDataModel({
    this.SalesItem,
    this.SalesItemQty,
    this.PurchaseItem,
    this.PurchaseItemName,
    this.PurchaseItemQty,
    this.PurchaseUom,
    this.conValue,
    this.purchaseItemSection,
    this.RouteID,
    this.pRate,
  });

  BOMDataModel copyWith({
    String? SalesItem,
    double? SalesItemQty,
    String? PurchaseItem,
    String? PurchaseItemName,
    double? PurchaseItemQty,
    String? PurchaseUom,
    double? conValue,
    String? purchaseItemSection,
    String? RouteID,
    double? pRate,
  }) {
    return BOMDataModel(
      SalesItem: SalesItem ?? this.SalesItem,
      SalesItemQty: SalesItemQty ?? this.SalesItemQty,
      PurchaseItem: PurchaseItem ?? this.PurchaseItem,
      PurchaseItemName: PurchaseItemName ?? this.PurchaseItemName,
      PurchaseItemQty: PurchaseItemQty ?? this.PurchaseItemQty,
      PurchaseUom: PurchaseUom ?? this.PurchaseUom,
      conValue: conValue ?? this.conValue,
      purchaseItemSection: purchaseItemSection ?? this.purchaseItemSection,
      RouteID: RouteID ?? this.RouteID,
      pRate: pRate ?? this.pRate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'SalesItem': SalesItem,
      'SalesItemQty': SalesItemQty,
      'PurchaseItem': PurchaseItem,
      'PurchaseItemName': PurchaseItemName,
      'PurchaseItemQty': PurchaseItemQty,
      'PurchaseUom': PurchaseUom,
      'conValue': conValue,
      'purchaseItemSection': purchaseItemSection,
      'RouteID': RouteID,
      'pRate': pRate,
    };
  }

  factory BOMDataModel.fromMap(Map<String, dynamic> map) {
    return BOMDataModel(
      SalesItem: map['SalesItem'],
      SalesItemQty: map['SalesItemQty']?.toDouble(),
      PurchaseItem: map['PurchaseItem'],
      PurchaseItemName: map['PurchaseItemName'],
      PurchaseItemQty: map['PurchaseItemQty']?.toDouble(),
      PurchaseUom: map['PurchaseUom'],
      conValue: map['conValue']?.toDouble(),
      purchaseItemSection: map['purchaseItemSection'],
      RouteID: map['RouteID'],
      pRate: map['pRate']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory BOMDataModel.fromJson(String source) =>
      BOMDataModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BOMDataModel(SalesItem: $SalesItem, SalesItemQty: $SalesItemQty, PurchaseItem: $PurchaseItem, PurchaseItemName: $PurchaseItemName, PurchaseItemQty: $PurchaseItemQty, PurchaseUom: $PurchaseUom, conValue: $conValue, purchaseItemSection: $purchaseItemSection, RouteID: $RouteID, pRate: $pRate)';
  }

  @override
  List<Object?> get props {
    return [
      SalesItem,
      SalesItemQty,
      PurchaseItem,
      PurchaseItemName,
      PurchaseItemQty,
      PurchaseUom,
      conValue,
      purchaseItemSection,
      RouteID,
      pRate,
    ];
  }
}
