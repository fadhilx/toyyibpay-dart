// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categoryCodes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryCodes _$CategoryCodesFromJson(Map<String, dynamic> json) {
  return CategoryCodes()
    ..categoryCodes = json['categoryCodes'] == null
        ? null
        : CategoryCode.fromJson(json['categoryCodes'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CategoryCodesToJson(CategoryCodes instance) =>
    <String, dynamic>{
      'categoryCodes': instance.categoryCodes,
    };
