// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Schedule _$ScheduleFromJson(Map<String, dynamic> json) => _Schedule(
      id: ID.fromJson(json['id'] as String),
      beginningTime: DateTime.parse(json['beginning_time'] as String),
      playtime: const DurationIntervalConverter()
          .fromJson(json['playtime'] as String),
      type: $enumDecodeNullable(_$ScheduleTypeEnumMap, json['schedule_type']) ??
          ScheduleType.event,
    );

Map<String, dynamic> _$ScheduleToJson(_Schedule instance) => <String, dynamic>{
      'id': instance.id,
      'beginning_time': instance.beginningTime.toIso8601String(),
      'playtime': const DurationIntervalConverter().toJson(instance.playtime),
      'schedule_type': _$ScheduleTypeEnumMap[instance.type]!,
    };

const _$ScheduleTypeEnumMap = {
  ScheduleType.adjustment: 'adjustment',
  ScheduleType.event: 'event',
  ScheduleType.available: 'available',
};
