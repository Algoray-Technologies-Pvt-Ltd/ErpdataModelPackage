// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:datamodelpackage/transaction/GeneralVoucherDataModel.dart';
import 'package:hive_flutter/adapters.dart';

class Deeo {
  String de;
  var cakeBox;
  Deeo({
    required this.de,
  });

  hiveinit() async {
    await Hive.initFlutter();
    Hive.registerAdapter(GeneralVoucherDataModelAdapter());

    this.cakeBox = await Hive.openBox<GeneralVoucherDataModel>('cakeBo');
  }
}
