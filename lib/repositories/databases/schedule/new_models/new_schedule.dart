import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:scenarioshelf/models/schedule/schedule.dart';
import 'package:scenarioshelf/utils/extension_types/id.dart';

part 'new_schedule.freezed.dart';

@freezed
abstract class NewSchedule with _$NewSchedule {
  @Assert('!playtime.isNegative', 'プレイ時間が負の値になっています')
  factory NewSchedule({
    required ID sessionId,
    required DateTime beginningTime,
    required Duration playtime,
    ScheduleType type = ScheduleType.event,
  }) {
    return NewSchedule.inserting(
      id: ID.generate(),
      type: type,
      sessionId: sessionId,
      beginningTime: beginningTime,
      playtime: playtime,
    );
  }

  const factory NewSchedule.inserting({
    required ID id,
    required ID sessionId,
    required ScheduleType type,
    required DateTime beginningTime,
    required Duration playtime,
  }) = _NewScheduleInserting;
}
