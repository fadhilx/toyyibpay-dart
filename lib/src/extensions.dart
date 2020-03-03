import 'dart:convert';

import 'package:http/http.dart';

import '../models/index.dart';

extension BanksExt on Banks {
  String arrayFromKey(rest) {
    return '{"banks":$rest}';
  }

  static String wrapArray(rest) {
    return '{"banks":$rest}';
  }

  static Future<Banks> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    var decoded = json.decode(wrapArray(rest));
    return Banks.fromJson(decoded);
  }
}

extension BankFPXsExt on BankFPXs {
  String arrayFromKey(rest) {
    return '{"bankFPXs":$rest}';
  }

  static String wrapArray(rest) {
    return '{"bankFPXs":$rest}';
  }

  static Future<BankFPXs> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    var decoded = json.decode(wrapArray(rest));
    return BankFPXs.fromJson(decoded);
  }
}

extension BillsExt on Bills {
  String arrayFromKey(rest) {
    return '{"bills":$rest}';
  }

  static String wrapArray(rest) {
    return '{"bills":$rest}';
  }

  static Future<Bills> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    var decoded = json.decode(wrapArray(rest));
    return Bills.fromJson(decoded);
  }
}

extension BillCodesExt on BillCodes {
  String arrayFromKey(rest) {
    return '{"billCodes":$rest}';
  }

  static String wrapArray(rest) {
    return '{"billCodes":$rest}';
  }

  static Future<BillCodes> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    var decoded = json.decode(wrapArray(rest));
    return BillCodes.fromJson(decoded);
  }
}

extension TransactionsExt on Transactions {
  String arrayFromKey(rest) {
    return '{"transactions":$rest}';
  }

  static String wrapArray(rest) {
    return '{"transactions":$rest}';
  }

  static Future<Transactions> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    var decoded = json.decode(wrapArray(rest));
    return Transactions.fromJson(decoded);
  }
}

extension CategoriesExt on Categories {
  static Future<Categories> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    var decoded = json.decode('{ "categories": $rest }');
    return Categories.fromJson(decoded);
  }
}

extension CategoryCodesExt on CategoryCodes {
  String arrayFromKey(rest) {
    return '{"categoryCodes":$rest}';
  }

  static String wrapArray(rest) {
    return '{"categoryCodes":$rest}';
  }

  static Future<CategoryCodes> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    var decoded = json.decode(wrapArray(rest));
    return CategoryCodes.fromJson(decoded);
  }
}

extension PackagesExt on Packages {
  String arrayFromKey(rest) {
    return '{"packages":$rest}';
  }

  static String wrapArray(rest) {
    return '{"packages":$rest}';
  }

  static Future<Packages> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    var decoded = json.decode(wrapArray(rest));
    return Packages.fromJson(decoded);
  }
}

extension SettlementsExt on Settlements {
  String arrayFromKey(rest) {
    return '{"settlements":$rest}';
  }

  static String wrapArray(rest) {
    return '{"settlements":$rest}';
  }

  static Future<Settlements> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    var decoded = json.decode(wrapArray(rest));
    return Settlements.fromJson(decoded);
  }
}

extension SettlementSummariesExt on SettlementSummaries {
  String arrayFromKey(rest) {
    return '{"settlementSummaries":$rest}';
  }

  static String wrapArray(rest) {
    return '{"settlementSummaries":$rest}';
  }

  static Future<SettlementSummaries> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    return SettlementSummaries.fromJson(json.decode(wrapArray(rest)));
  }
}

extension UsersExt on Users {
  String arrayFromKey(rest) {
    return '{"users":$rest}';
  }

  static String wrapArray(rest) {
    return '{"users":$rest}';
  }

  static Future<Users> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    var decoded = json.decode(wrapArray(rest));
    return Users.fromJson(decoded);
  }
}

extension UserCreatedsExt on UserCreateds {
  String arrayFromKey(rest) {
    return '{"userCreateds":$rest}';
  }

  static String wrapArray(rest) {
    return '{"userCreateds":$rest}';
  }

  static Future<UserCreateds> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    var decoded = json.decode(wrapArray(rest));
    return UserCreateds.fromJson(decoded);
  }
}

extension UserStatusesExt on UserStatuses {
  String arrayFromKey(rest) {
    return '{"userStatuses":$rest}';
  }

  static String wrapArray(rest) {
    return '{"userStatuses":$rest}';
  }

  static Future<UserStatuses> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    var decoded = json.decode(wrapArray(rest));
    return UserStatuses.fromJson(decoded);
  }
}

// ******************************
//        singular
// ******************************
extension BankExt on Bank {
  static Future<Bank> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    var decoded = json.decode(rest);
    return Bank.fromJson(decoded);
  }
}

extension BankFPXExt on BankFPX {
  static Future<BankFPX> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    var decoded = json.decode(rest);
    return BankFPX.fromJson(decoded);
  }
}

extension BillExt on Bill {
  static Future<Bill> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    var decoded = json.decode(rest);
    return Bill.fromJson(decoded);
  }
}

extension BillCodeExt on BillCode {
  static Future<BillCode> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    var decoded = json.decode(rest);
    return BillCode.fromJson(decoded);
  }
}

extension TransactionExt on Transaction {
  static Future<Transaction> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    var decoded = json.decode(rest);
    return Transaction.fromJson(decoded);
  }
}

extension CategoryExt on Category {
  static Future<Category> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    var decoded = json.decode(rest);
    return Category.fromJson(decoded);
  }
}

extension CategoryCodeExt on CategoryCode {
  static Future<CategoryCode> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    var decoded = json.decode(rest);
    return CategoryCode.fromJson(decoded);
  }
}

extension PackageExt on Package {
  static Future<Package> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    var decoded = json.decode(rest);
    return Package.fromJson(decoded);
  }
}

extension SettlementExt on Settlement {
  static Future<Settlement> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    var decoded = json.decode(rest);
    return Settlement.fromJson(decoded);
  }
}

extension SettlementSummaryExt on SettlementSummary {
  static Future<SettlementSummary> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    var decoded = json.decode(rest);
    return SettlementSummary.fromJson(decoded);
  }
}

extension UserExt on User {
  static Future<User> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    var decoded = json.decode(rest);
    return User.fromJson(decoded);
  }
}

extension UserCreatedExt on UserCreated {
  static Future<UserCreated> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    var decoded = json.decode(rest);
    return UserCreated.fromJson(decoded);
  }
}

extension UserStatusExt on UserStatus {
  static Future<UserStatus> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    var decoded = json.decode(rest);
    return UserStatus.fromJson(decoded);
  }
}
