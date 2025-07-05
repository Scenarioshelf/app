import 'package:scenarioshelf/models/scenario/scenario.dart';
import 'package:scenarioshelf/repositories/databases/scenario/new_models/new_scenario.dart';
import 'package:scenarioshelf/utils/extension_types/id.dart';
import 'package:scenarioshelf/utils/result.dart';

abstract interface class ScenarioAPI {
  Future<Scenario> create({required NewScenario scenario});
  Future<Scenario> get({required ID id});
  Future<List<Scenario>> listByUserId({required ID userId});
  Future<Scenario> update({required Scenario scenario});
  Future<Result> delete({required ID id});
}
