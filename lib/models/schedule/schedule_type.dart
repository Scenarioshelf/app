part of 'schedule.dart';

@JsonEnum(valueField: 'id')
enum ScheduleType {
  adjustment(id: 'adjustment' as EnumID, label: '候補日'),
  event(id: 'event' as EnumID, label: '実施日'),
  available(id: 'available' as EnumID, label: '予備日');

  const ScheduleType({
    required this.id,
    required this.label,
  });

  factory ScheduleType.fromId(EnumID id) {
    return ScheduleType.values.firstWhere(
      (type) => type.id == id,
      orElse: () => ScheduleType.event,
    );
  }

  final EnumID id;
  final String label;
}
