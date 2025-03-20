import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:scenarioshelf/models/scenario/scenario.dart';
import 'package:scenarioshelf/repositories/auth/auth_api.dart';
import 'package:scenarioshelf/repositories/auth/auth_repository.dart';
import 'package:scenarioshelf/repositories/databases/character/character_api.dart';
import 'package:scenarioshelf/repositories/databases/character/character_repository.dart';
import 'package:scenarioshelf/repositories/databases/scenario/new_models/new_scenario.dart';
import 'package:scenarioshelf/repositories/databases/scenario/scenario_api.dart';
import 'package:scenarioshelf/repositories/storages/scenario_key_visual/scenario_key_visual_api.dart';
import 'package:scenarioshelf/repositories/storages/scenario_key_visual/scenario_key_visual_repository.dart';
import 'package:scenarioshelf/utils/extension_types/id.dart';
import 'package:scenarioshelf/utils/result.dart';

part 'scenario_repository.g.dart';

@riverpod
ScenarioRepository scenarioRepository(Ref ref) {
  final authRepository = ref.read(authRepositoryProvider);
  final keyVisualRepository = ref.read(scenarioKeyVisualRepositoryProvider);
  final characterRepository = ref.read(characterRepositoryProvider);

  return ScenarioRepository(
    authRepository: authRepository,
    keyVisualRepository: keyVisualRepository,
    characterRepository: characterRepository,
  );
}

class ScenarioRepository implements ScenarioAPI {
  const ScenarioRepository({
    required AuthAPI authRepository,
    required ScenarioKeyVisualAPI keyVisualRepository,
    required CharacterAPI characterRepository,
  })  : _authRepository = authRepository,
        _keyVisualRepository = keyVisualRepository,
        _characterRepository = characterRepository;

  static const String tableName = 'scenarios';
  final AuthAPI _authRepository;
  final ScenarioKeyVisualAPI _keyVisualRepository;
  final CharacterAPI _characterRepository;

  @override
  Future<Scenario> create({
    required NewScenario scenario,
  }) async {
    final keyVisualUrl = (scenario.keyVisual != null)
        ? await _keyVisualRepository.upsert(
            scenarioId: scenario.id,
            keyVisual: scenario.keyVisual!,
          )
        : null;

    final client = Supabase.instance.client;
    final currentUser = await _authRepository.getCurrentUser();

    await client.from(tableName).insert({
      'id': scenario.id,
      'trpg_system': scenario.system.id,
      'title': scenario.title,
      'kana': scenario.kana,
      'keyVisual': keyVisualUrl,
      'storeUrl': scenario.storeUrl,
      'author': scenario.author,
      'createdBy': currentUser.id,
    }).select();

    for (final character in scenario.characters) {
      await _characterRepository.create(character: character);
    }

    return get(id: scenario.id);
  }

  @override
  Future<Scenario> get({required ID id}) async {
    final client = Supabase.instance.client;
    final response = await client.from(tableName).select('''
      *,
      characters ( * )
    ''').eq('id', id as String).single();

    return Scenario.fromJson(response);
  }

  @override
  Future<List<Scenario>> listByUserId({required ID userId}) {
    // `TODO`: implement listByUserId
    throw UnimplementedError();
  }

  @override
  Future<Scenario> update({required Scenario scenario}) {
    // `TODO`: implement update
    throw UnimplementedError();
  }

  @override
  Future<Result> delete({required ID id}) {
    // `TODO`: implement delete
    throw UnimplementedError();
  }
}
