// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
      id: ID.fromJson(json['id'] as String),
      name: json['username'] as String,
      avatarUrl: json['avatar_url'] as String?,
    );

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.name,
      'avatar_url': instance.avatarUrl,
    };
