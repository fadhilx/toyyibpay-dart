import 'dart:convert';

import 'package:http/http.dart';

import '../models/index.dart';

extension BanksExt on Banks {
  static Future<Banks> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    return Banks.fromJson(json.decode('{"banks":$rest}'));
  }
}

extension BillsExt on Bills {
  static Future<Bills> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    return Bills.fromJson(json.decode("{'bills':$rest}"));
  }
}

extension BillCodesExt on BillCodes {
  static Future<BillCodes> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    return BillCodes.fromJson(json.decode("{'billCodes':$rest}"));
  }
}

extension TransactionsExt on Transactions {
  static Future<Transactions> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    return Transactions.fromJson(json.decode("{'transactions':$rest}"));
  }
}

extension CategoriessExt on Categories {
  static Future<Categories> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    return Categories.fromJson(json.decode("{'categories':$rest}"));
  }
}

extension CategoryCodesExt on CategoryCodes {
  static Future<CategoryCodes> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    return CategoryCodes.fromJson(json.decode("{'categoryCodes':$rest}"));
  }
}

extension PackagesExt on Packages {
  static Future<Packages> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    return Packages.fromJson(json.decode("{'packages':$rest}"));
  }
}

extension SettlementsExt on Settlements {
  static Future<Settlements> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    return Settlements.fromJson(json.decode("{'settlements':$rest}"));
  }
}

extension SettlementSummariessExt on SettlementSummaries {
  static Future<SettlementSummaries> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    return SettlementSummaries.fromJson(
        json.decode("{'settlementSummaries':$rest}"));
  }
}

extension UsersExt on Users {
  static Future<Users> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    return Users.fromJson(json.decode("{'users':$rest}"));
  }
}

extension UserCreatedsExt on UserCreateds {
  static Future<UserCreateds> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    return UserCreateds.fromJson(json.decode("{'userCreateds':$rest}"));
  }
}

extension UserStatusesExt on UserStatuses {
  static Future<UserStatuses> fromFuture(Future<Response> future) async {
    var rest = (await future).body;
    return UserStatuses.fromJson(json.decode("{'userStatuses':$rest}"));
  }
}
