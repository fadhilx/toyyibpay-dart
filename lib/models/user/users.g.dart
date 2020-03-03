// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Users _$UsersFromJson(Map<String, dynamic> json) {
  return Users()
    ..users = json['users'] == null
        ? null
        : User.fromJson(json['users'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UsersToJson(Users instance) => <String, dynamic>{
      'users': instance.users,
    };
