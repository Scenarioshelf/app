// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scenario.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Scenario _$ScenarioFromJson(Map<String, dynamic> json) => _Scenario(
      id: ID.fromJson(json['id'] as String),
      system: $enumDecode(_$TRPGSystemEnumMap, json['trpg_system']),
      title: json['title'] as String,
      characters: (json['characters'] as List<dynamic>?)
              ?.map((e) => Character.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      kana: json['kana'] as String?,
      keyVisualUrl: json['key_visual_url'] as String?,
      storeUrl: json['store_url'] as String?,
      author: json['author'] as String?,
    );

Map<String, dynamic> _$ScenarioToJson(_Scenario instance) => <String, dynamic>{
      'id': instance.id,
      'trpg_system': _$TRPGSystemEnumMap[instance.system]!,
      'title': instance.title,
      'characters': instance.characters,
      'kana': instance.kana,
      'key_visual_url': instance.keyVisualUrl,
      'store_url': instance.storeUrl,
      'author': instance.author,
    };

const _$TRPGSystemEnumMap = {
  TRPGSystem.mm: 'mm',
  TRPGSystem.coc6: 'coc6',
  TRPGSystem.coc7: 'coc7',
  TRPGSystem.ek: 'ek',
  TRPGSystem.sw20: 'sw20',
  TRPGSystem.sw25: 'sw25',
  TRPGSystem.shinobi: 'shinobi',
  TRPGSystem.dx3rd: 'dx3rd',
  TRPGSystem.dd: 'dd',
  TRPGSystem.sp: 'sp',
  TRPGSystem.other: 'other',
};
