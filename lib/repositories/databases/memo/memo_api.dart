import 'package:scenarioshelf/models/memo/memo.dart';
import 'package:scenarioshelf/repositories/databases/memo/new_models/new_memo.dart';
import 'package:scenarioshelf/utils/extension_types/id.dart';
import 'package:scenarioshelf/utils/result.dart';

abstract interface class MemoAPI {
  Future<Memo> create({required NewMemo memo});
  Future<Memo> get({required ID id});
  Future<List<Memo>> listBySessionId({required ID sessionId});
  Future<Memo> update({required Memo memo});
  Future<Result> delete({required ID id});
}
