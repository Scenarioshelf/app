import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:scenarioshelf/models/character/character.dart';
import 'package:scenarioshelf/utils/extension_types/enum_id.dart';
import 'package:scenarioshelf/utils/extension_types/id.dart';

part 'participant.freezed.dart';
part 'participant.g.dart';
part 'participant_role.dart';

@freezed
abstract class Participant with _$Participant {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Participant({
    required ID id,
    @JsonKey(name: 'participant_role') required ParticipantRole role,
    required String name,
    ID? userId,
    String? xId,
    String? discordId,
    Character? character,
  }) = _Participant;

  factory Participant.fromJson(Map<String, dynamic> json) => _$ParticipantFromJson(json);
}
