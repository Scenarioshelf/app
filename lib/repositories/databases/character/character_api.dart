import 'package:scenarioshelf/models/character/character.dart';
import 'package:scenarioshelf/repositories/databases/character/new_models/new_character.dart';
import 'package:scenarioshelf/utils/extension_types/id.dart';
import 'package:scenarioshelf/utils/result.dart';

abstract interface class CharacterAPI {
  Future<Character> create({required NewCharacter character});
  Future<Character> get({required ID id});
  Future<List<Character>> listByScenarioId({required ID scenarioId});
  Future<Character> update({required Character character});
  Future<Result> delete({required ID id});
}
