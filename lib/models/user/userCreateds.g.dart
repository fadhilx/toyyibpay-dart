// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userCreateds.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserCreateds _$UserCreatedsFromJson(Map<String, dynamic> json) {
  return UserCreateds()
    ..userCreateds = json['userCreateds'] == null
        ? null
        : UserCreated.fromJson(json['userCreateds'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UserCreatedsToJson(UserCreateds instance) =>
    <String, dynamic>{
      'userCreateds': instance.userCreateds,
    };
