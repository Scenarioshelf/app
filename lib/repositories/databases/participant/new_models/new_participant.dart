import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:scenarioshelf/models/participant/participant.dart';
import 'package:scenarioshelf/utils/extension_types/id.dart';

part 'new_participant.freezed.dart';

@freezed
abstract class NewParticipant with _$NewParticipant {
  factory NewParticipant({
    required ID sessionId,
    required ParticipantRole role,
    required String name,
    ID? userId,
    String? xId,
    String? discordId,
    String? characterId,
  }) {
    return NewParticipant.inserting(
      id: ID.generate(),
      sessionId: sessionId,
      role: role,
      name: name,
      userId: userId,
      xId: xId,
      discordId: discordId,
      characterId: characterId,
    );
  }

  const factory NewParticipant.inserting({
    required ID id,
    required ID sessionId,
    required ParticipantRole role,
    required String name,
    ID? userId,
    String? xId,
    String? discordId,
    String? characterId,
  }) = _NewParticipantInserting;
}
