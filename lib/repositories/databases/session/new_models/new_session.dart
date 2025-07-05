import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:scenarioshelf/repositories/databases/memo/new_models/new_memo.dart';
import 'package:scenarioshelf/repositories/databases/participant/new_models/new_participant.dart';
import 'package:scenarioshelf/repositories/databases/schedule/new_models/new_schedule.dart';
import 'package:scenarioshelf/utils/extension_types/id.dart';

part 'new_session.freezed.dart';

@freezed
abstract class NewSession with _$NewSession {
  factory NewSession({
    required ID scenarioId,
    List<NewSchedule> schedules = const [],
    List<NewParticipant> participants = const [],
    List<NewMemo> memos = const [],
  }) {
    return NewSession.inserting(
      id: ID.generate(),
      scenarioId: scenarioId,
      schedules: schedules,
      participants: participants,
      memos: memos,
    );
  }

  const factory NewSession.inserting({
    required ID id,
    required ID scenarioId,
    required List<NewSchedule> schedules,
    required List<NewParticipant> participants,
    required List<NewMemo> memos,
  }) = _NewSessionInserting;
}
