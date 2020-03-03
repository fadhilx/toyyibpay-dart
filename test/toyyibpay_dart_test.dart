import 'dart:convert';

import 'package:toyyibpay_sdk/models/index.dart';
import 'package:toyyibpay_sdk/src/extensions.dart';
import 'package:toyyibpay_sdk/toyyibpay_dart.dart';
import 'package:test/test.dart';

bool modelTest(model, responseBody, {wrapper}) {
  wrapper ??= (text) {
    return '$text';
  };
  Map decodedResp = json.decode(wrapper(responseBody));
  Map modelToJson = model.toJson();
  var keys = modelToJson.keys.map((e) => e.toLowerCase()).toList();
  var ok = true;
  decodedResp.forEach((key, val) {
    if (modelToJson[key] == null) {
      print('- modelToJson `$key` is notequal');
      if (keys.contains(key.toLowerCase())) {
        print('  - but $key in different case');
      }
      if (ok) ok = false;
    }
  });
  return ok;
}

void main() async {
  ToyyibPay toyyibpay;
  // toyyibpay = ToyyibPay('secret', sandbox: true);
  // var future = toyyibpay.createBill(
  //     categoryCode: 'oafy8f7g',
  //     billName: 'dasfsdfa ',
  //     billDescription: 'fsdfas dsdf',
  //     billPriceSetting: '1',
  //     billPayorInfo: '1',
  //     billAmount: '2520',
  //     billReturnUrl: '',
  //     billCallbackUrl: '',
  //     billExternalReferenceNo: '',
  //     billTo: 'Support',
  //     billEmail: 'aiman@gmail.com',
  //     billPhone: '60132345596',
  //     billSplitPayment: '0',
  //     billSplitPaymentArgs: '',
  //     billPaymentChannel: '2',
  //     billDisplayMerchant: '1',
  //     billChargeToCustomer: '2',
  //     billContentEmail: '',
  //     billAdditionalField: '');
  // var model = await BillCodeExt.fromFuture(future);
  // modelTest(model, (await future).body);

  group('A group of tests', () {
    ToyyibPay toyyibpay;

    setUp(() {
      toyyibpay = ToyyibPay('secret', sandbox: true);
    });

    test('expect response match getBank', () async {
      var future = toyyibpay.getBank();
      var model = await BanksExt.fromFuture(future);
      expect(modelTest(model, (await future).body, wrapper: model.arrayFromKey),
          isTrue);
    });
    test('expect response match getBankFPX', () async {
      var future = toyyibpay.getBankFPX();
      var model = await BankFPXsExt.fromFuture(future);
      expect(modelTest(model, (await future).body, wrapper: model.arrayFromKey),
          isTrue);
    });

    test('expect response match getPackage', () async {
      var future = toyyibpay.getPackage();
      var model = await PackagesExt.fromFuture(future);
      expect(modelTest(model, (await future).body, wrapper: model.arrayFromKey),
          isTrue);
    });

    // test('expect response match createCategory', () async {
    //  // create
    //   var future = toyyibpay.createCategory(
    //       catname: 'Nama Category', catdescription: 'asdasxzc asd');
    //   var model = await CategoryCodeExt.fromFuture(future);
    //   expect(modelTest(model, (await future).body), isTrue);
    // });
    test('expect response match getCategoryDetails', () async {
      var future = toyyibpay.getCategoryDetails(
        categoryCode: 'oafy8f7g',
      );
      var model = await CategoryExt.fromFuture(future);
      expect(modelTest(model, (await future).body), isTrue);
    });
    // test('expect response match createBill', () async {
    //   var future = toyyibpay.createBill(
    //       categoryCode: 'oafy8f7g',
    //       billName: 'dasfsdfa ',
    //       billDescription: 'fsdfas dsdf',
    //       billPriceSetting: '1',
    //       billPayorInfo: '1',
    //       billAmount: '2520',
    //       billReturnUrl: '',
    //       billCallbackUrl: '',
    //       billExternalReferenceNo: '',
    //       billTo: 'Support',
    //       billEmail: 'aiman@gmail.com',
    //       billPhone: '60132345596',
    //       billSplitPayment: '0',
    //       billSplitPaymentArgs: '',
    //       billPaymentChannel: '2',
    //       billDisplayMerchant: '1',
    //       billChargeToCustomer: '2');
    //   var model = await BillCodeExt.fromFuture(future);
    //   expect(modelTest(model, (await future).body), isTrue);
    // });
  });
}
