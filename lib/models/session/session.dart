import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import 'package:scenarioshelf/models/memo/memo.dart';
import 'package:scenarioshelf/models/participant/participant.dart';
import 'package:scenarioshelf/models/scenario/scenario.dart';
import 'package:scenarioshelf/models/schedule/schedule.dart';
import 'package:scenarioshelf/utils/extension_types/id.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@freezed
abstract class Session with _$Session {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Session({
    required ID id,
    required Scenario scenario,
    required ID createdBy,
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
      final startFormat = DateFormat('yyyy年M月d日 HH:mm', 'ja_JP');
      final finishFormat = DateFormat('HH:mm', 'ja_JP');
      return '${startFormat.format(eventDays.first.beginningTime)} ~ ${finishFormat.format(finishTime)}';
    }

    final firstDay = eventDays.first.beginningTime;
    final lastDay = eventDays.last.beginningTime;

    if (firstDay.year != lastDay.year) {
      final dateFormat = DateFormat('yyyy年M月d日', 'ja_JP');
      return '${dateFormat.format(firstDay)} ~ ${dateFormat.format(lastDay)}';
    }
    if (firstDay.month != lastDay.month) {
      final firstDayFormat = DateFormat('yyyy年M月d日', 'ja_JP');
      final lastDayFormat = DateFormat('M月d日', 'ja_JP');
      return '${firstDayFormat.format(firstDay)} ~ ${lastDayFormat.format(lastDay)}';
    }
    if (firstDay.day != lastDay.day) {
      final firstDayFormat = DateFormat('yyyy年M月d日', 'ja_JP');
      final lastDayFormat = DateFormat('d日', 'ja_JP');
      return '${firstDayFormat.format(firstDay)} ~ ${lastDayFormat.format(lastDay)}';
    }

    final startFormat = DateFormat('yyyy年M月d日 HH:mm', 'ja_JP');
    final finishFormat = DateFormat('HH:mm', 'ja_JP');
    return '${startFormat.format(firstDay)} ~ ${finishFormat.format(lastDay)}';
  }
}
