// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userStatuses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserStatuses _$UserStatusesFromJson(Map<String, dynamic> json) {
  return UserStatuses()
    ..userStatuses = json['userStatuses'] == null
        ? null
        : UserStatus.fromJson(json['userStatuses'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UserStatusesToJson(UserStatuses instance) =>
    <String, dynamic>{
      'userStatuses': instance.userStatuses,
    };
