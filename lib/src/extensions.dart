import 'dart:convert';

import 'package:http/http.dart';

import '../models/index.dart';

extension BanksExt on Banks {
  Future<Banks> fromFuture(Future<Response> future) async {
    return Banks.fromJson(json.decode("{'banks':${(await future).body}}"));
  }
}

extension BillsExt on Bills {
  Future<Bills> fromFuture(Future<Response> future) async {
    return Bills.fromJson(json.decode("{'bills':${(await future).body}}"));
  }
}

extension BillCodesExt on BillCodes {
  Future<BillCodes> fromFuture(Future<Response> future) async {
    return BillCodes.fromJson(
        json.decode("{'billCodes':${(await future).body}}"));
  }
}

extension TransactionsExt on Transactions {
  Future<Transactions> fromFuture(Future<Response> future) async {
    return Transactions.fromJson(
        json.decode("{'transactions':${(await future).body}}"));
  }
}

extension CategoriessExt on Categories {
  Future<Categories> fromFuture(Future<Response> future) async {
    return Categories.fromJson(
        json.decode("{'categories':${(await future).body}}"));
  }
}

extension CategoryCodesExt on CategoryCodes {
  Future<CategoryCodes> fromFuture(Future<Response> future) async {
    return CategoryCodes.fromJson(
        json.decode("{'categoryCodes':${(await future).body}}"));
  }
}

extension PackagesExt on Packages {
  Future<Packages> fromFuture(Future<Response> future) async {
    return Packages.fromJson(
        json.decode("{'packages':${(await future).body}}"));
  }
}

extension SettlementsExt on Settlements {
  Future<Settlements> fromFuture(Future<Response> future) async {
    return Settlements.fromJson(
        json.decode("{'settlements':${(await future).body}}"));
  }
}

extension SettlementSummariessExt on SettlementSummaries {
  Future<SettlementSummaries> fromFuture(Future<Response> future) async {
    return SettlementSummaries.fromJson(
        json.decode("{'settlementSummaries':${(await future).body}}"));
  }
}

extension UsersExt on Users {
  Future<Users> fromFuture(Future<Response> future) async {
    return Users.fromJson(json.decode("{'users':${(await future).body}}"));
  }
}

extension UserCreatedsExt on UserCreateds {
  Future<UserCreateds> fromFuture(Future<Response> future) async {
    return UserCreateds.fromJson(
        json.decode("{'userCreateds':${(await future).body}}"));
  }
}

extension UserStatusesExt on UserStatuses {
  Future<UserStatuses> fromFuture(Future<Response> future) async {
    return UserStatuses.fromJson(
        json.decode("{'userStatuses':${(await future).body}}"));
  }
}
