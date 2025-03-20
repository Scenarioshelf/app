import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide Session;

import 'package:scenarioshelf/constants/domains/sort_order.dart';
import 'package:scenarioshelf/models/session/session.dart';
import 'package:scenarioshelf/repositories/auth/auth_api.dart';
import 'package:scenarioshelf/repositories/auth/auth_repository.dart';
import 'package:scenarioshelf/repositories/databases/memo/memo_api.dart';
import 'package:scenarioshelf/repositories/databases/memo/memo_repository.dart';
import 'package:scenarioshelf/repositories/databases/participant/participant_api.dart';
import 'package:scenarioshelf/repositories/databases/participant/participant_repository.dart';
import 'package:scenarioshelf/repositories/databases/schedule/schedule_api.dart';
import 'package:scenarioshelf/repositories/databases/schedule/schedule_repository.dart';
import 'package:scenarioshelf/repositories/databases/session/new_models/new_session.dart';
import 'package:scenarioshelf/repositories/databases/session/session_api.dart';
import 'package:scenarioshelf/utils/extension_types/id.dart';
import 'package:scenarioshelf/utils/result.dart';
import 'package:scenarioshelf/views/pages/sessions/providers/sessions_sort_pivot/sessions_sort_pivot.dart';

part 'session_repository.g.dart';

@riverpod
SessionRepository sessionRepository(Ref ref) {
  final authRepository = ref.read(authRepositoryProvider);
  final scheduleRepository = ref.read(scheduleRepositoryProvider);
  final memoRepository = ref.read(memoRepositoryProvider);
  final participantRepository = ref.read(participantRepositoryProvider);

  return SessionRepository(
    authRepository: authRepository,
    scheduleRepository: scheduleRepository,
    memoRepository: memoRepository,
    participantRepository: participantRepository,
  );
}

class SessionRepository implements SessionAPI {
  const SessionRepository({
    required AuthAPI authRepository,
    required ScheduleAPI scheduleRepository,
    required MemoAPI memoRepository,
    required ParticipantAPI participantRepository,
  })  : _authRepository = authRepository,
        _scheduleRepository = scheduleRepository,
        _memoRepository = memoRepository,
        _participantRepository = participantRepository;

  static const String tableName = 'sessions';
  final AuthAPI _authRepository;
  final ScheduleAPI _scheduleRepository;
  final MemoAPI _memoRepository;
  final ParticipantAPI _participantRepository;

  @override
  Future<Session> create({required NewSession session}) async {
    final client = Supabase.instance.client;
    final currentUser = await _authRepository.getCurrentUser();

    await client.from(tableName).insert({
      'id': session.id,
      'scenario_id': session.scenarioId,
      'created_by': currentUser.id,
      'memos': session.memos,
    });

    for (final schedule in session.schedules) {
      await _scheduleRepository.create(
        schedule: schedule,
      );
    }

    for (final participant in session.participants) {
      await _participantRepository.create(
        participant: participant,
      );
    }

    for (final memo in session.memos) {
      await _memoRepository.create(
        memo: memo,
      );
    }

    return get(id: session.id);
  }

  @override
  Future<Session> get({required ID id}) async {
    final client = Supabase.instance.client;
    final response = await client.from(tableName).select('''
      *,
      scenario:scenario_id (
        *,
        characters ( * )
      ),
      schedules ( * ),
      memos ( * ),
      participants (
        *,
        character:character_id ( * )
      )
    ''').eq('id', id as String).single();

    return Session.fromJson(response);
  }

  @override
  Future<List<Session>> listByUserId({
    required ID userId,
    SessionsSortPivot pivot = SessionsSortPivot.scenarioTitle,
    SortOrder order = SortOrder.asc,
  }) async {
    final client = Supabase.instance.client;
    final response = await client.from(pivot.getViewTable(order)).select('''
      *,
      scenario:scenario_id (
        *,
        characters ( * )
      ),
      schedules ( * ),
      memos ( * ),
      participants (
        *,
        character:character_id ( * )
      )
    ''').eq('created_by', userId as String);

    return response.map(Session.fromJson).toList();
  }

  @override
  Future<Session> update({required Session session}) async {
    throw UnimplementedError();
  }

  @override
  Future<Result> delete({required ID id}) async {
    throw UnimplementedError();
  }
}
