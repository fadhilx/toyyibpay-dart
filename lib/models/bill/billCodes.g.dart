// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'billCodes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BillCodes _$BillCodesFromJson(Map<String, dynamic> json) {
  return BillCodes()
    ..billCodes = json['billCodes'] == null
        ? null
        : BillCode.fromJson(json['billCodes'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BillCodesToJson(BillCodes instance) => <String, dynamic>{
      'billCodes': instance.billCodes,
    };
