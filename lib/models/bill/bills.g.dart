// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bills.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bills _$BillsFromJson(Map<String, dynamic> json) {
  return Bills()
    ..bills = json['bills'] == null
        ? null
        : Bill.fromJson(json['bills'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BillsToJson(Bills instance) => <String, dynamic>{
      'bills': instance.bills,
    };
