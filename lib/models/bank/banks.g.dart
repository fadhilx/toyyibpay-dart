// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Banks _$BanksFromJson(Map<String, dynamic> json) {
  return Banks()
    ..banks = json['banks'] == null
        ? null
        : Bank.fromJson(json['banks'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BanksToJson(Banks instance) => <String, dynamic>{
      'banks': instance.banks,
    };
