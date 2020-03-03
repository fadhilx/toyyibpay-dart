// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settlements.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Settlements _$SettlementsFromJson(Map<String, dynamic> json) {
  return Settlements()
    ..settlements = json['settlements'] == null
        ? null
        : Settlement.fromJson(json['settlements'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SettlementsToJson(Settlements instance) =>
    <String, dynamic>{
      'settlements': instance.settlements,
    };
