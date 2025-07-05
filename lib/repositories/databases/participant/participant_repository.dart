import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:scenarioshelf/models/participant/participant.dart';
import 'package:scenarioshelf/repositories/databases/participant/new_models/new_participant.dart';
import 'package:scenarioshelf/repositories/databases/participant/participant_api.dart';
import 'package:scenarioshelf/utils/extension_types/id.dart';
import 'package:scenarioshelf/utils/result.dart';

part 'participant_repository.g.dart';

@riverpod
ParticipantRepository participantRepository(Ref ref) {
  return const ParticipantRepository();
}

class ParticipantRepository implements ParticipantAPI {
  const ParticipantRepository();

  static const String tableName = 'participants';

  @override
  Future<Participant> create({required NewParticipant participant}) async {
    final client = Supabase.instance.client;

    final response = await client.from(tableName).insert({
      'id': participant.id,
      'session_id': participant.sessionId,
      'participant_role': participant.role.id,
      'character_id': participant.characterId,
      'name': participant.name,
      'user_id': participant.userId,
      'x_id': participant.xId,
      'discord_id': participant.discordId,
    }).select('''
      *,
      character:character_id ( * ),
    ''');

    return Participant.fromJson(response.first);
  }

  @override
  Future<Result> delete({required ID id}) {
    // `TODO`: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Participant> get({required ID id}) {
    // `TODO`: implement get
    throw UnimplementedError();
  }

  @override
  Future<List<Participant>> listBySessionId({required ID sessionId}) {
    // `TODO`: implement listBySessionId
    throw UnimplementedError();
  }

  @override
  Future<Participant> update({required Participant participant}) {
    // `TODO`: implement update
    throw UnimplementedError();
  }
}
