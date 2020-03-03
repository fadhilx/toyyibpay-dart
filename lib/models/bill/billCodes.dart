import 'package:json_annotation/json_annotation.dart';

import 'billCode.dart';

part 'billCodes.g.dart';

@JsonSerializable()
class BillCodes {
      BillCodes();

  BillCode billCodes;

  factory BillCodes.fromJson(Map<String,dynamic> json) => _$BillCodesFromJson(json);
  Map<String, dynamic> toJson() => _$BillCodesToJson(this);
}