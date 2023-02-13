import 'package:flutter_test/flutter_test.dart';

import 'package:datamodelpackage/datamodelpackage.dart';

void main() {
  test('adds one to input values', () {
    final generalVoucherDataModel =
        GeneralVoucherDataModel(displayVoucherNumber: '916');
    print(generalVoucherDataModel.displayVoucherNumber);
  });
}
