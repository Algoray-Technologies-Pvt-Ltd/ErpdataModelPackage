import 'dart:convert';

import 'package:datamodelpackage/InventoryItemHive.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
part 'CompoundItemDataModel.g.dart';

@HiveType(typeId: 5)
class CompoundItemDataModel extends HiveObject with EquatableMixin {
  @HiveField(0)
  final InventoryItemHive BaseItem;
  CompoundItemDataModel({
    required this.BaseItem,
  });

  CompoundItemDataModel copyWith({
    InventoryItemHive? BaseItem,
  }) {
    return CompoundItemDataModel(
      BaseItem: BaseItem ?? this.BaseItem,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'BaseItem': BaseItem.toMap(),
    };
  }

  factory CompoundItemDataModel.fromMap(Map<String, dynamic> map) {
    return CompoundItemDataModel(
      BaseItem: InventoryItemHive.fromMap(map['BaseItem']),
    );
  }

  String toJson() => json.encode(toMap());

  factory CompoundItemDataModel.fromJson(String source) =>
      CompoundItemDataModel.fromMap(json.decode(source));

  @override
  String toString() => 'CompoundItemDataModel(BaseItem: $BaseItem)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CompoundItemDataModel && other.BaseItem == BaseItem;
  }

  @override
  int get hashCode => BaseItem.hashCode;

  @override
  List<Object?> get props => [BaseItem];

  Map<String, dynamic> toMapForTransTest() {
    return {
      'BaseItem': BaseItem.toMap(),
    };
  }

  factory CompoundItemDataModel.fromMapForTransTest(Map<String, dynamic>? map) {
    print('Inv Conv : $map');
    if (map == null)
      return CompoundItemDataModel(BaseItem: InventoryItemHive());

    return CompoundItemDataModel(
      BaseItem: InventoryItemHive.fromMap(map['BaseItem']),
    );
  }
}
