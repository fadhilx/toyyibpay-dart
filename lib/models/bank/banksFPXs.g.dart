// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banksFPXs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BanksFPXs _$BanksFPXsFromJson(Map<String, dynamic> json) {
  return BanksFPXs()
    ..banks = json['banks'] == null
        ? null
        : Bank.fromJson(json['banks'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BanksFPXsToJson(BanksFPXs instance) => <String, dynamic>{
      'banks': instance.banks,
    };
