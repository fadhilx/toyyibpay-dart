import 'dart:core';
export 'extensions/settlement.dart';
export 'extensions/bill.dart';
export 'extensions/category.dart';
export 'extensions/general.dart';
export 'extensions/user.dart';

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
}
