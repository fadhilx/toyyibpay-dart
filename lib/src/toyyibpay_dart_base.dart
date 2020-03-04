import 'package:http/http.dart' as http;
import 'package:http/src/response.dart';

import 'package:meta/meta.dart';
import 'package:toyyibpay_sdk/models/index.dart';
import 'dart:core';

import 'package:toyyibpay_sdk/src/extensions.dart';

class ToyyibPay {
  bool sandbox = false;
  final String secreteKey;
  ToyyibPay(this.secreteKey, {this.sandbox}) {
    if (secreteKey == null) throw ('Secret Key Required');
  }
  String url(url) {
    return baseUrl.resolve(url).toString();
  }

  Uri get baseUrl {
    return Uri.parse(
        sandbox ? 'https://dev.toyyibpay.com/' : 'https://toyyibpay.com/');
  }

  Map bodyParams(Map params, {secretParamString}) {
    secretParamString ??= 'userSecretKey';
    var newParams = {};
    params.forEach((key, value) {
      if (value != null) newParams[key] = value;
    });
    return {secretParamString: secreteKey}..addAll(newParams);
  }

  Future<Banks> getBank() {
    return BanksExt.fromFuture(http.post(url('/index.php/api/getBank')));
  }

  Future<BankFPXs> getBankFPX() {
    return BankFPXsExt.fromFuture(http.post(url('/index.php/api/getBankFPX')));
  }

  Future<Packages> getPackage() {
    return PackagesExt.fromFuture(http.post(url('/index.php/api/getPackage')));
  }

  Future<Users> createAccount({
    @required fullname,
    @required username,
    @required email,
    @required password,
    @required phone,
    @required bank,
    @required accountNo,
    @required accountHolderName,
    @required registrationNo,
    @required int package,
  }) {
    var params = bodyParams({
      'fullname': fullname,
      'username': username,
      'email': email,
      'password': password,
      'phone': phone,
      'bank': bank,
      'accountNo': accountNo,
      'accountHolderName': accountHolderName,
      'registrationNo': registrationNo,
      'package': package,
    });
    return UsersExt.fromFuture(
        http.post(url('/index.php/api/createAccount'), body: params));
  }

  Future<UserStatuses> getUserStatus({
    @required username,
    @required enterpriseUserSecretKey,
  }) {
    var params = bodyParams({
      'username': username,
      'enterpriseUserSecretKey': enterpriseUserSecretKey,
    });
    return UserStatusesExt.fromFuture(
        http.post(url('/index.php/api/getUserStatus'), body: params));
  }

  Future<Users> getAllUser({
    @required partnerType,
  }) {
    var params = bodyParams({
      'partnerType': partnerType,
    });
    return UsersExt.fromFuture(
        http.post(url('/admin/api/getAllUser'), body: params));
  }

  Future<CategoryCode> createCategory({
    @required catname,
    @required catdescription,
  }) {
    var params = bodyParams({
      'catname': catname,
      'catdescription': catdescription,
    });
    return CategoryCodeExt.fromFuture(
        http.post(url('/index.php/api/createCategory'), body: params));
  }

  Future<Category> getCategoryDetails({
    @required categoryCode,
  }) {
    var params = bodyParams({
      'categoryCode': categoryCode,
    });
    return CategoryExt.fromFuture(
        http.post(url('/index.php/api/getCategoryDetails'), body: params));
  }

  Future<BillCodes> createBill({
    @required categoryCode,
    @required billName,
    @required billDescription,
    @required billPriceSetting,
    @required billPayorInfo,
    @required billAmount,
    @required billReturnUrl,
    @required billCallbackUrl,
    @required billExternalReferenceNo,
    @required billTo,
    @required billEmail,
    @required billPhone,
    @required billSplitPayment,
    @required billSplitPaymentArgs,
    @required billPaymentChannel,
    billDisplayMerchant,
    billContentEmail,
    billAdditionalField,
    @required billChargeToCustomer,
  }) {
    var params = bodyParams({
      'categoryCode': categoryCode,
      'billName': billName,
      'billDescription': billDescription,
      'billPriceSetting': billPriceSetting,
      'billPayorInfo': billPayorInfo,
      'billAmount': billAmount,
      'billReturnUrl': billReturnUrl,
      'billCallbackUrl': billCallbackUrl,
      'billExternalReferenceNo': billExternalReferenceNo,
      'billTo': billTo,
      'billEmail': billEmail,
      'billPhone': billPhone,
      'billSplitPayment': billSplitPayment,
      'billSplitPaymentArgs': billSplitPaymentArgs,
      'billPaymentChannel': billPaymentChannel,
      'billDisplayMerchant': billDisplayMerchant,
      'billContentEmail': billContentEmail,
      'billAdditionalField': billAdditionalField,
      'billChargeToCustomer': billChargeToCustomer,
    });
    return BillCodesExt.fromFuture(
        http.post(url('/index.php/api/createBill'), body: params));
  }

  Future<BillCodes> createBillMultiPayment({
    @required categoryCode,
    @required billName,
    @required billDescription,
    @required billPriceSetting,
    @required billPayorInfo,
    @required billAmount,
    @required billReturnUrl,
    @required billCallbackUrl,
    @required billExternalReferenceNo,
    billTo,
    @required billEmail,
    @required billPhone,
    @required billSplitPayment,
    @required billSplitPaymentArgs,
    @required billMultiPayment,
    billPaymentChannel,
    billDisplayMerchant,
    billContentEmail,
  }) {
    var params = bodyParams({
      'categoryCode': categoryCode,
      'billName': billName,
      'billDescription': billDescription,
      'billPriceSetting': billPriceSetting,
      'billPayorInfo': billPayorInfo,
      'billAmount': billAmount,
      'billReturnUrl': billReturnUrl,
      'billCallbackUrl': billCallbackUrl,
      'billExternalReferenceNo': billExternalReferenceNo,
      'billTo': billTo,
      'billEmail': billEmail,
      'billPhone': billPhone,
      'billSplitPayment': billSplitPayment,
      'billSplitPaymentArgs': billSplitPaymentArgs,
      'billMultiPayment': billMultiPayment,
      'billPaymentChannel': billPaymentChannel,
      'billDisplayMerchant': billDisplayMerchant,
      'billContentEmail': billContentEmail,
    });
    return BillCodesExt.fromFuture(
        http.post(url('/index.php/api/createBillMultiPayment'), body: params));
  }

  Future<Response> runBill({
    @required billCode,

    /// amount you want
    @required billpaymentAmount,
    @required billpaymentPayorName,
    @required billpaymentPayorPhone,
    @required billpaymentPayorEmail,
    billBankID,
  }) {
    var params = bodyParams({
      'billCode': billCode,
      'billpaymentAmount': billpaymentAmount,
      'billpaymentPayorName': billpaymentPayorName,
      'billpaymentPayorPhone': billpaymentPayorPhone,
      'billpaymentPayorEmail': billpaymentPayorEmail,
      'billBankID': billBankID,
    });
    return http.post(url('/index.php/api/runBill'), body: params);
  }

  Future<Bills> getAllBill({
    @required partnerType,
    yearMonth,
  }) {
    var params = bodyParams({
      'partnerType': partnerType,
      'year-month': yearMonth,
    });
    return BillsExt.fromFuture(
        http.post(url('/admin/api/getAllBill'), body: params));
  }

  Future<Transactions> getBillTransactions({
    @required billCode,
    @required billpaymentStatus,
  }) {
    var params = bodyParams({
      'billCode': billCode,
      'billpaymentStatus': billpaymentStatus,
    });
    return TransactionsExt.fromFuture(
        http.post(url('/index.php/api/getBillTransactions'), body: params));
  }

  Future<Settlements> getSettlement({
    @required partnerType,
    @required detailByuserName,
  }) {
    var params = bodyParams({
      'partnerType': partnerType,
      'detailByuserName': detailByuserName,
    });
    return SettlementsExt.fromFuture(
        http.post(url('/admin/api/getSettlement'), body: params));
  }

  Future<SettlementSummaries> getSettlementSummary({
    @required userPartnerType,
    @required userName,
  }) {
    var params = bodyParams({
      'userPartnerType': userPartnerType,
      'userName': userName,
    });
    return SettlementSummariesExt.fromFuture(
        http.post(url('/admin/api/getSettlement'), body: params));
  }
}
