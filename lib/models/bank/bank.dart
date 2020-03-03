import 'package:json_annotation/json_annotation.dart';



part 'bank.g.dart';

@JsonSerializable()
class Bank {
      Bank();

  @JsonKey(name: 'CODE') String cODE;
  @JsonKey(name: 'NAME') String nAME;

  factory Bank.fromJson(Map<String,dynamic> json) => _$BankFromJson(json);
  Map<String, dynamic> toJson() => _$BankToJson(this);
}