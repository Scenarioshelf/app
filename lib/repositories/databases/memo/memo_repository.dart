import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:scenarioshelf/models/memo/memo.dart';
import 'package:scenarioshelf/repositories/databases/memo/memo_api.dart';
import 'package:scenarioshelf/repositories/databases/memo/new_models/new_memo.dart';
import 'package:scenarioshelf/utils/extension_types/id.dart';
import 'package:scenarioshelf/utils/result.dart';

part 'memo_repository.g.dart';

@riverpod
MemoRepository memoRepository(Ref ref) {
  return const MemoRepository();
}

class MemoRepository implements MemoAPI {
  const MemoRepository();

  static const String tableName = 'memos';

  @override
  Future<Memo> create({required NewMemo memo}) async {
    final client = Supabase.instance.client;

    final response = await client.from(tableName).insert({
      'id': memo.id,
      'session_id': memo.sessionId,
      'title': memo.title,
      'content': memo.content,
      'is_public': memo.isPublic,
    }).select();

    return Memo.fromJson(response.first);
  }

  @override
  Future<Result> delete({required ID id}) {
    // `TODO`: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Memo> get({required ID id}) {
    // `TODO`: implement get
    throw UnimplementedError();
  }

  @override
  Future<List<Memo>> listBySessionId({required ID sessionId}) {
    // `TODO`: implement listBySessionId
    throw UnimplementedError();
  }

  @override
  Future<Memo> update({required Memo memo}) {
    // `TODO`: implement update
    throw UnimplementedError();
  }
}
