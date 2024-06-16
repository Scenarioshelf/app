import 'package:intl/intl.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:scenarioshelf/models/memo/memo.dart';
import 'package:scenarioshelf/models/participant/participant.dart';
import 'package:scenarioshelf/models/scenario/scenario.dart';
import 'package:scenarioshelf/models/schedule/schedule.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@freezed
class Session with _$Session {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Session({
    required String id,
    required Scenario scenario,
    required String createdBy,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default([]) List<Schedule> schedules,
    @Default([]) List<Participant> participants,
    @Default([]) List<Memo> memos,
  }) = _Session;
  const Session._();

  factory Session.fromJson(Map<String, dynamic> json) => _$SessionFromJson(json);

  String? get myRoleDisplay {
    final myParticipant = participants.firstWhereOrNull(
      (participant) => participant.userId == createdBy,
    );

    if (myParticipant == null) {
      return null;
    }

    if (myParticipant.role != ParticipantRole.player) {
      return myParticipant.role.label;
    }

    return myParticipant.character?.name ?? myParticipant.role.label;
  }

  String? get eventDayDisplay {
    final eventDays = schedules
        .where((schedule) => schedule.type == ScheduleType.event)
        .toList()
        .sorted((a, b) => a.beginningTime.compareTo(b.beginningTime));
    if (eventDays.isEmpty) {
      return null;
    }

    if (eventDays.length == 1) {
      final finishTime = eventDays.first.beginningTime.add(eventDays.first.playtime);
      final startFormat = DateFormat('yyyy年M月d日 hh:mm');
      final finishFormat = DateFormat('hh:mm');
      return '${startFormat.format(eventDays.first.beginningTime)} ~ ${finishFormat.format(finishTime)}';
    }

    final firstDay = eventDays.first.beginningTime;
    final lastDay = eventDays.last.beginningTime;

    if (firstDay.year != lastDay.year) {
      final dateFormat = DateFormat('yyyy年M月d日');
      return '${dateFormat.format(firstDay)} ~ ${dateFormat.format(lastDay)}';
    }
    if (firstDay.month != lastDay.month) {
      final firstDayFormat = DateFormat('yyyy年M月d日');
      final lastDayFormat = DateFormat('M月d日');
      return '${firstDayFormat.format(firstDay)} ~ ${lastDayFormat.format(lastDay)}';
    }
    if (firstDay.day != lastDay.day) {
      final firstDayFormat = DateFormat('yyyy年M月d日');
      final lastDayFormat = DateFormat('d日');
      return '${firstDayFormat.format(firstDay)} ~ ${lastDayFormat.format(lastDay)}';
    }

    final startFormat = DateFormat('yyyy年M月d日 hh:mm');
    final finishFormat = DateFormat('hh:mm');
    return '${startFormat.format(firstDay)} ~ ${finishFormat.format(lastDay)}';
  }
}
