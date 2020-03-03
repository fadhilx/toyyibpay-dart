import 'package:http/http.dart' as http;
import 'package:http/src/response.dart';

import 'package:meta/meta.dart';

class ToyyibPay {
  final String secreteKey;
  ToyyibPay(this.secreteKey);
  Map bodyParams(Map params, {secretParamString}) {
    secretParamString ??= 'userSecretKey';
    return {secretParamString: secreteKey}..addAll(params);
  }

  Future<Response> getBank() {
    return http.post('/index.php/api/getBank');
  }

  Future<Response> getBankFPX() {
    return http.post('/index.php/api/getBankFPX');
  }

  Future<Response> getPackage() {
    return http.post('/index.php/api/getPackage');
  }

  Future<Response> createAccount({
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
    return http.post('/index.php/api/createAccount', body: params);
  }

  Future<Response> getUserStatus({
    @required username,
    @required enterpriseUserSecretKey,
  }) {
    var params = bodyParams({
      'username': username,
      'enterpriseUserSecretKey': enterpriseUserSecretKey,
    });
    return http.post('/index.php/api/getUserStatus', body: params);
  }

  Future<Response> getAllUser({
    @required partnerType,
  }) {
    var params = bodyParams({
      'partnerType': partnerType,
    });
    return http.post('/admin/api/getAllUser', body: params);
  }

  Future<Response> createCategory({
    @required catname,
    @required catdescription,
  }) {
    var params = bodyParams({
      'catname': catname,
      'catdescription': catdescription,
    });
    return http.post('/index.php/api/createCategory', body: params);
  }

  Future<Response> getCategoryDetails({
    @required categoryCode,
  }) {
    var params = bodyParams({
      'categoryCode': categoryCode,
    });
    return http.post('index.php/api/getCategoryDetails', body: params);
  }

  Future<Response> createBill({
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
    return http.post('/index.php/api/createBill', body: params);
  }

  Future<Response> createBillMultiPayment({
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
    return http.post('/index.php/api/createBillMultiPayment', body: params);
  }

  Future<Response> runBill({
    @required billCode,
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
    return http.post('/index.php/api/runBill', body: params);
  }

  Future<Response> getAllBill({
    @required partnerType,
    yearMonth,
  }) {
    var params = bodyParams({
      'partnerType': partnerType,
      'yearMonth': yearMonth,
    });
    return http.post('/admin/api/getAllBill', body: params);
  }

  Future<Response> getBillTransactions({
    @required billCode,
    @required billpaymentStatus,
  }) {
    var params = bodyParams({
      'billCode': billCode,
      'billpaymentStatus': billpaymentStatus,
    });
    return http.post('/index.php/api/getBillTransactions', body: params);
  }

  Future<Response> getSettlement({
    @required partnerType,
    @required detailByuserName,
  }) {
    var params = bodyParams({
      'partnerType': partnerType,
      'detailByuserName': detailByuserName,
    });
    return http.post('/admin/api/getSettlement', body: params);
  }

  Future<Response> getSettlementSummary({
    @required userPartnerType,
    @required userName,
  }) {
    var params = bodyParams({
      'userPartnerType': userPartnerType,
      'userName': userName,
    });
    return http.post('/admin/api/getSettlement', body: params);
  }
}
