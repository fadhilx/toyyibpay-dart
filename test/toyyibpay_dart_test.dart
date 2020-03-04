import 'package:toyyibpay_sdk/toyyibpay_dart.dart';
import 'package:test/test.dart';
import 'dart:io' show Platform;

void main() async {
  ToyyibPay toyyibpay;
  var secretKey = Platform.environment['SecretKey_ToyyibPay'];

  toyyibpay = ToyyibPay(secretKey, sandbox: true);
  group('API call', () {
    group('Create:', () {
      test('createCategory not return null', () async {
        // create
        var model = await toyyibpay.createCategory(
            catname: 'Nama Category', catdescription: 'asdasxzc asd');
        expect(model, isNotNull);
      });
      test('createBill not return null', () async {
        // create
        var model = await toyyibpay.createBill(
            categoryCode: 'oafy8f7g',
            billName: 'dasfsdfa ',
            billDescription: 'fsdfas dsdf',
            billPriceSetting: '1',
            billPayorInfo: '0',
            billAmount: '2520',
            billReturnUrl: '',
            billCallbackUrl: '',
            billExternalReferenceNo: '',
            billTo: 'Support',
            billEmail: 'aiman@gmail.com',
            billPhone: '60132345596',
            billSplitPayment: '0',
            billSplitPaymentArgs: '',
            billPaymentChannel: '2',
            billDisplayMerchant: '1',
            billChargeToCustomer: '2');
        expect(model, isNotNull);
      });
      test('createBillMultiPayment not return null', () async {
        // create
        var model = await toyyibpay.createBillMultiPayment(
          categoryCode: 'oafy8f7g',
          billName: 'dasfsdfa ',
          billDescription: 'fsdfas dsdf',
          billPriceSetting: '1',
          billPayorInfo: '1',
          billAmount: '2520',
          billReturnUrl: '',
          billCallbackUrl: '',
          billExternalReferenceNo: '',
          billTo: 'Support',
          billEmail: 'aiman@gmail.com',
          billPhone: '60132345596',
          billSplitPayment: '0',
          billSplitPaymentArgs: '',
          billPaymentChannel: '2',
          billDisplayMerchant: '1',
          billMultiPayment: '1',
        );
        expect(model, isNotNull);
      });
    });
    group('Get:', () {
      test('getBank not return null', () async {
        var model = await toyyibpay.getBank();
        expect(model, isNotNull);
      });
      test('getBankFPX not return null', () async {
        var model = await toyyibpay.getBankFPX();
        expect(model, isNotNull);
      });
      test('getPackage not return null', () async {
        var model = await toyyibpay.getPackage();
        expect(model, isNotNull);
      });
      test('getCategoryDetails not return null', () async {
        var model = await toyyibpay.getCategoryDetails(
          categoryCode: 'oafy8f7g',
        );
        expect(model, isNotNull);
      });
      test('getBillTransactions not return null', () async {
        var model = await toyyibpay.getBillTransactions(
          billCode: 'sejid',
          billpaymentStatus: '1',
        );
        expect(model, isNotNull);
      });
    });
    group('PartnerType only:', () {
      // cant test
      test('getAllBill not return null', () async {
        var model = await toyyibpay.getAllBill(
          partnerType: 'OEM',
          yearMonth: '2019-10',
        );
        expect(model, isNotNull);
      });
      test('getSettlement not return null', () async {
        var model = await toyyibpay.getSettlement(
          partnerType: 'OEM',
          detailByuserName: 'Yes',
        );
        expect(model, isNotNull);
      });
      test('getSettlementSummary not return null', () async {
        var model = await toyyibpay.getSettlementSummary(
          userPartnerType: 'OEM',
          userName: 'Sample Username',
        );
        expect(model, isNotNull);
      });
    });
    group('Other:', () {
      test('runBill got string response', () async {
        // create
        var future = toyyibpay.runBill(
          billCode: 'qbm5uhqn',
          billpaymentPayorName: 'dasfsdfa',
          billpaymentPayorPhone: '601215648',
          billpaymentPayorEmail: 'fadsda@asd.cdfas',
          billBankID: '',
          billpaymentAmount: '2501',
        );
        var res = (await future);
        expect(res.body is String, isTrue);
      });
    });
  });
}
