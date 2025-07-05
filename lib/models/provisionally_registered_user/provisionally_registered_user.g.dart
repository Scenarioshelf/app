// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provisionally_registered_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProvisionallyRegisteredUser _$ProvisionallyRegisteredUserFromJson(
        Map<String, dynamic> json) =>
    _ProvisionallyRegisteredUser(
      id: ID.fromJson(json['id'] as String),
      name: json['name'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
    );

Map<String, dynamic> _$ProvisionallyRegisteredUserToJson(
        _ProvisionallyRegisteredUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
    };
