// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bank _$BankFromJson(Map<String, dynamic> json) {
  return Bank()
    ..cODE = json['CODE'] as String
    ..nAME = json['NAME'] as String;
}

Map<String, dynamic> _$BankToJson(Bank instance) => <String, dynamic>{
      'CODE': instance.cODE,
      'NAME': instance.nAME,
    };
