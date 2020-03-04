import 'dart:convert';

import 'package:http/http.dart';

import '../models/index.dart';

bool modelTest(model, responseBody, {wrapper}) {
  wrapper ??= (text) {
    return '$text';
  };
  print(responseBody);
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

extension BanksExt on Banks {
  String arrayFromKey(rest) {
    return wrapArray(rest);
  }

  static String wrapArray(rest) {
    return '{"banks":$rest}';
  }

  static Future<Banks> fromFuture(Future<Response> future,
      {testModel = false}) async {
    var rest = (await future).body;
    var decoded = json.decode(wrapArray(rest));
    var model = Banks.fromJson(decoded);
    modelTest(model, rest, wrapper: model.arrayFromKey);
    return model;
  }
}

extension BankFPXsExt on BankFPXs {
  String arrayFromKey(rest) {
    return wrapArray(rest);
  }

  static String wrapArray(rest) {
    return '{"bankFPXs":$rest}';
  }

  static Future<BankFPXs> fromFuture(Future<Response> future,
      {testModel = false}) async {
    var rest = (await future).body;
    var decoded = json.decode(wrapArray(rest));
    var model = BankFPXs.fromJson(decoded);
    modelTest(model, rest, wrapper: model.arrayFromKey);
    return model;
  }
}

extension BillsExt on Bills {
  String arrayFromKey(rest) {
    return wrapArray(rest);
  }

  static String wrapArray(rest) {
    return '{"bills":$rest}';
  }

  static Future<Bills> fromFuture(Future<Response> future,
      {testModel = false}) async {
    var rest = (await future).body;
    var decoded = json.decode(wrapArray(rest));
    var model = Bills.fromJson(decoded);
    modelTest(model, rest, wrapper: model.arrayFromKey);
    return model;
  }
}

extension BillCodesExt on BillCodes {
  String arrayFromKey(rest) {
    return wrapArray(rest);
  }

  static String wrapArray(rest) {
    return '{"billCodes":$rest}';
  }

  static Future<BillCodes> fromFuture(Future<Response> future,
      {testModel = false}) async {
    var rest = (await future).body;
    var decoded = json.decode(wrapArray(rest));
    var model = BillCodes.fromJson(decoded);
    modelTest(model, rest, wrapper: model.arrayFromKey);
    return model;
  }
}

extension TransactionsExt on Transactions {
  String arrayFromKey(rest) {
    return wrapArray(rest);
  }

  static String wrapArray(rest) {
    return '{"transactions":$rest}';
  }

  static Future<Transactions> fromFuture(Future<Response> future,
      {testModel = false}) async {
    var rest = (await future).body;
    var decoded = json.decode(wrapArray(rest));
    var model = Transactions.fromJson(decoded);
    modelTest(model, rest, wrapper: model.arrayFromKey);
    return model;
  }
}

extension CategoriesExt on Categories {
  String arrayFromKey(rest) {
    return wrapArray(rest);
  }

  static String wrapArray(rest) {
    return '{"transactions":$rest}';
  }

  static Future<Categories> fromFuture(Future<Response> future,
      {testModel = false}) async {
    var rest = (await future).body;
    var decoded = json.decode('{ "categories": $rest }');
    var model = Categories.fromJson(decoded);
    modelTest(model, rest, wrapper: model.arrayFromKey);
    return model;
  }
}

extension CategoryCodesExt on CategoryCodes {
  String arrayFromKey(rest) {
    return wrapArray(rest);
  }

  static String wrapArray(rest) {
    return '{"categoryCodes":$rest}';
  }

  static Future<CategoryCodes> fromFuture(Future<Response> future,
      {testModel = false}) async {
    var rest = (await future).body;
    var decoded = json.decode(wrapArray(rest));
    var model = CategoryCodes.fromJson(decoded);
    modelTest(model, rest, wrapper: model.arrayFromKey);
    return model;
  }
}

extension PackagesExt on Packages {
  String arrayFromKey(rest) {
    return wrapArray(rest);
  }

  static String wrapArray(rest) {
    return '{"packages":$rest}';
  }

  static Future<Packages> fromFuture(Future<Response> future,
      {testModel = false}) async {
    var rest = (await future).body;
    var decoded = json.decode(wrapArray(rest));
    var model = Packages.fromJson(decoded);
    modelTest(model, rest, wrapper: model.arrayFromKey);
    return model;
  }
}

extension SettlementsExt on Settlements {
  String arrayFromKey(rest) {
    return wrapArray(rest);
  }

  static String wrapArray(rest) {
    return '{"settlements":$rest}';
  }

  static Future<Settlements> fromFuture(Future<Response> future,
      {testModel = false}) async {
    var rest = (await future).body;
    var decoded = json.decode(wrapArray(rest));
    var model = Settlements.fromJson(decoded);
    modelTest(model, rest, wrapper: model.arrayFromKey);
    return model;
  }
}

extension SettlementSummariesExt on SettlementSummaries {
  String arrayFromKey(rest) {
    return wrapArray(rest);
  }

  static String wrapArray(rest) {
    return '{"settlementSummaries":$rest}';
  }

  static Future<SettlementSummaries> fromFuture(Future<Response> future,
      {testModel = false}) async {
    var rest = (await future).body;
    var decoded = json.decode(wrapArray(rest));
    var model = SettlementSummaries.fromJson(decoded);
    modelTest(model, rest, wrapper: model.arrayFromKey);
    return model;
  }
}

extension UsersExt on Users {
  String arrayFromKey(rest) {
    return wrapArray(rest);
  }

  static String wrapArray(rest) {
    return '{"users":$rest}';
  }

  static Future<Users> fromFuture(Future<Response> future,
      {testModel = false}) async {
    var rest = (await future).body;
    var decoded = json.decode(wrapArray(rest));
    var model = Users.fromJson(decoded);
    modelTest(model, rest, wrapper: model.arrayFromKey);
    return model;
  }
}

extension UserCreatedsExt on UserCreateds {
  String arrayFromKey(rest) {
    return wrapArray(rest);
  }

  static String wrapArray(rest) {
    return '{"userCreateds":$rest}';
  }

  static Future<UserCreateds> fromFuture(Future<Response> future,
      {testModel = false}) async {
    var rest = (await future).body;
    var decoded = json.decode(wrapArray(rest));
    var model = UserCreateds.fromJson(decoded);
    modelTest(model, rest, wrapper: model.arrayFromKey);
    return model;
  }
}

extension UserStatusesExt on UserStatuses {
  String arrayFromKey(rest) {
    return wrapArray(rest);
  }

  static String wrapArray(rest) {
    return '{"userStatuses":$rest}';
  }

  static Future<UserStatuses> fromFuture(Future<Response> future,
      {testModel = false}) async {
    var rest = (await future).body;
    var decoded = json.decode(wrapArray(rest));
    var model = UserStatuses.fromJson(decoded);
    modelTest(model, rest, wrapper: model.arrayFromKey);
    return model;
  }
}

// ******************************
//        singular
// ******************************
extension BankExt on Bank {
  static Future<Bank> fromFuture(Future<Response> future,
      {testModel = false}) async {
    var rest = (await future).body;
    var decoded = json.decode(rest);
    var model = Bank.fromJson(decoded);
    modelTest(model, rest);
    return model;
  }
}

extension BankFPXExt on BankFPX {
  static Future<BankFPX> fromFuture(Future<Response> future,
      {testModel = false}) async {
    var rest = (await future).body;
    var decoded = json.decode(rest);
    var model = BankFPX.fromJson(decoded);
    modelTest(model, rest);
    return model;
  }
}

extension BillExt on Bill {
  static Future<Bill> fromFuture(Future<Response> future,
      {testModel = false}) async {
    var rest = (await future).body;
    var decoded = json.decode(rest);
    var model = Bill.fromJson(decoded);
    modelTest(model, rest);
    return model;
  }
}

extension BillCodeExt on BillCode {
  static Future<BillCode> fromFuture(Future<Response> future,
      {testModel = false}) async {
    var rest = (await future).body;
    var decoded = json.decode(rest);
    var model = BillCode.fromJson(decoded);
    modelTest(model, rest);
    return model;
  }
}

extension TransactionExt on Transaction {
  static Future<Transaction> fromFuture(Future<Response> future,
      {testModel = false}) async {
    var rest = (await future).body;
    var decoded = json.decode(rest);
    var model = Transaction.fromJson(decoded);
    modelTest(model, rest);
    return model;
  }
}

extension CategoryExt on Category {
  static Future<Category> fromFuture(Future<Response> future,
      {testModel = false}) async {
    var rest = (await future).body;
    var decoded = json.decode(rest);
    var model = Category.fromJson(decoded);
    modelTest(model, rest);
    return model;
  }
}

extension CategoryCodeExt on CategoryCode {
  static Future<CategoryCode> fromFuture(Future<Response> future,
      {testModel = false}) async {
    var rest = (await future).body;
    var decoded = json.decode(rest);
    var model = CategoryCode.fromJson(decoded);
    modelTest(model, rest);
    return model;
  }
}

extension PackageExt on Package {
  static Future<Package> fromFuture(Future<Response> future,
      {testModel = false}) async {
    var rest = (await future).body;
    var decoded = json.decode(rest);
    var model = Package.fromJson(decoded);
    modelTest(model, rest);
    return model;
  }
}

extension SettlementExt on Settlement {
  static Future<Settlement> fromFuture(Future<Response> future,
      {testModel = false}) async {
    var rest = (await future).body;
    var decoded = json.decode(rest);
    var model = Settlement.fromJson(decoded);
    modelTest(model, rest);
    return model;
  }
}

extension SettlementSummaryExt on SettlementSummary {
  static Future<SettlementSummary> fromFuture(Future<Response> future,
      {testModel = false}) async {
    var rest = (await future).body;
    var decoded = json.decode(rest);
    var model = SettlementSummary.fromJson(decoded);
    modelTest(model, rest);
    return model;
  }
}

extension UserExt on User {
  static Future<User> fromFuture(Future<Response> future,
      {testModel = false}) async {
    var rest = (await future).body;
    var decoded = json.decode(rest);
    var model = User.fromJson(decoded);
    modelTest(model, rest);
    return model;
  }
}

extension UserCreatedExt on UserCreated {
  static Future<UserCreated> fromFuture(Future<Response> future,
      {testModel = false}) async {
    var rest = (await future).body;
    var decoded = json.decode(rest);
    var model = UserCreated.fromJson(decoded);
    modelTest(model, rest);
    return model;
  }
}

extension UserStatusExt on UserStatus {
  static Future<UserStatus> fromFuture(Future<Response> future,
      {testModel = false}) async {
    var rest = (await future).body;
    var decoded = json.decode(rest);
    var model = UserStatus.fromJson(decoded);
    modelTest(model, rest);
    return model;
  }
}
