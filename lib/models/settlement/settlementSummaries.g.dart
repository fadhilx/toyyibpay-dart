// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settlementSummaries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettlementSummaries _$SettlementSummariesFromJson(Map<String, dynamic> json) {
  return SettlementSummaries()
    ..settlementSummaries = json['settlementSummaries'] == null
        ? null
        : SettlementSummary.fromJson(
            json['settlementSummaries'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SettlementSummariesToJson(
        SettlementSummaries instance) =>
    <String, dynamic>{
      'settlementSummaries': instance.settlementSummaries,
    };
