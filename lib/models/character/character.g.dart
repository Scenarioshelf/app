// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Character _$CharacterFromJson(Map<String, dynamic> json) => _Character(
      id: ID.fromJson(json['id'] as String),
      name: json['name'] as String,
      isPublic: json['is_public'] as bool? ?? true,
      isCustomized: json['is_customized'] as bool? ?? false,
      number: (json['number'] as num?)?.toInt(),
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$CharacterToJson(_Character instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'is_public': instance.isPublic,
      'is_customized': instance.isCustomized,
      'number': instance.number,
      'image_url': instance.imageUrl,
    };
