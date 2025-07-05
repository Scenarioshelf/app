import 'package:scenarioshelf/models/schedule/schedule.dart';
import 'package:scenarioshelf/repositories/databases/schedule/new_models/new_schedule.dart';
import 'package:scenarioshelf/utils/extension_types/id.dart';
import 'package:scenarioshelf/utils/result.dart';

abstract interface class ScheduleAPI {
  Future<Schedule> create({required NewSchedule schedule});
  Future<Schedule> get({required ID id});
  Future<List<Schedule>> listBySessionId({required ID sessionId});
  Future<Schedule> update({required Schedule schedule});
  Future<Result> delete({required ID id});
}
