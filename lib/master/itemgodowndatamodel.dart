import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
part 'itemgodowndatamodel.g.dart';

@HiveType(typeId: 15)
class ItemGodownDataModel extends HiveObject with EquatableMixin {
  @HiveField(0)
  final String? fromGodown;
  @HiveField(1)
  final String? toGodown;
  @HiveField(2)
  final double? crQty;
  @HiveField(3)
  final double? drQty;
  @HiveField(4)
  final double? enteredQty;
  @HiveField(5)
  final double? crAmount;
  @HiveField(6)
  final double? drAmount;
  ItemGodownDataModel({
    this.fromGodown,
    this.toGodown,
    this.crQty,
    this.drQty,
    this.enteredQty,
    this.crAmount,
    this.drAmount,
  });

  ItemGodownDataModel copyWith({
    String? fromGodown,
    String? toGodown,
    double? crQty,
    double? drQty,
    double? enteredQty,
    double? crAmount,
    double? drAmount,
  }) {
    return ItemGodownDataModel(
      fromGodown: fromGodown ?? this.fromGodown,
      toGodown: toGodown ?? this.toGodown,
      crQty: crQty ?? this.crQty,
      drQty: drQty ?? this.drQty,
      enteredQty: enteredQty ?? this.enteredQty,
      crAmount: crAmount ?? this.crAmount,
      drAmount: drAmount ?? this.drAmount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'fromGodown': fromGodown,
      'toGodown': toGodown,
      'crQty': crQty,
      'drQty': drQty,
      'enteredQty': enteredQty,
      'crAmount': crAmount,
      'drAmount': drAmount,
    };
  }

  factory ItemGodownDataModel.fromMap(Map<String, dynamic> map) {
    return ItemGodownDataModel(
      fromGodown: map['fromGodown'],
      toGodown: map['toGodown'],
      crQty: map['crQty']?.toDouble(),
      drQty: map['drQty']?.toDouble(),
      enteredQty: map['enteredQty']?.toDouble(),
      crAmount: map['crAmount']?.toDouble(),
      drAmount: map['drAmount']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemGodownDataModel.fromJson(String source) =>
      ItemGodownDataModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ItemGodownDataModel(fromGodown: $fromGodown, toGodown: $toGodown, crQty: $crQty, drQty: $drQty, enteredQty: $enteredQty, crAmount: $crAmount, drAmount: $drAmount)';
  }

  @override
  List<Object?> get props {
    return [
      fromGodown,
      toGodown,
      crQty,
      drQty,
      enteredQty,
      crAmount,
      drAmount,
    ];
  }
}
