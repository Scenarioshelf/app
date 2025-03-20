import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:scenarioshelf/models/character/character.dart';
import 'package:scenarioshelf/repositories/databases/character/character_api.dart';
import 'package:scenarioshelf/repositories/databases/character/new_models/new_character.dart';
import 'package:scenarioshelf/repositories/storages/character_image/character_image_api.dart';
import 'package:scenarioshelf/repositories/storages/character_image/character_image_repository.dart';
import 'package:scenarioshelf/utils/extension_types/id.dart';
import 'package:scenarioshelf/utils/result.dart';

part 'character_repository.g.dart';

@riverpod
CharacterRepository characterRepository(Ref ref) {
  final characterImageRepository = ref.read(characterImageRepositoryProvider);

  return CharacterRepository(characterImageRepository: characterImageRepository);
}

class CharacterRepository implements CharacterAPI {
  const CharacterRepository({
    required CharacterImageAPI characterImageRepository,
  }) : _imageRepository = characterImageRepository;

  static const String tableName = 'characters';
  final CharacterImageAPI _imageRepository;

  @override
  Future<Character> create({required NewCharacter character}) async {
    final imageUrl = (character.image != null)
        ? await _imageRepository.upsert(
            characterId: character.id,
            image: character.image!,
          )
        : null;

    final client = Supabase.instance.client;

    final response = await client.from(tableName).insert({
      'id': character.id,
      'scenario_id': character.scenarioId,
      'name': character.name,
      'is_public': character.isPublic,
      'is_customized': character.isCustomized,
      'number': character.number,
      'image_url': imageUrl,
    }).select();

    return Character.fromJson(response.first);
  }

  @override
  Future<Result> delete({required ID id}) {
    // `TODO`: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Character> get({required ID id}) {
    // `TODO`: implement get
    throw UnimplementedError();
  }

  @override
  Future<List<Character>> listByScenarioId({required ID scenarioId}) {
    // `TODO`: implement listByScenarioId
    throw UnimplementedError();
  }

  @override
  Future<Character> update({required Character character}) {
    // `TODO`: implement update
    throw UnimplementedError();
  }
}
