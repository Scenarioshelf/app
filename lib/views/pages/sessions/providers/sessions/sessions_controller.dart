import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:scenarioshelf/models/session/session.dart';
import 'package:scenarioshelf/repositories/databases/session/session_repository.dart';
import 'package:scenarioshelf/utils/extension_types/id.dart';
import 'package:scenarioshelf/views/pages/sessions/providers/sessions_sort_order/sessions_sort_order_controller.dart';
import 'package:scenarioshelf/views/pages/sessions/providers/sessions_sort_pivot/sessions_sort_pivot_controller.dart';

part 'sessions_controller.g.dart';

@riverpod
Future<List<Session>> sessionController(
  Ref ref,
  ID userId,
) async {
  final pivot = ref.watch(sessionsSortPivotControllerProvider);
  final order = ref.watch(sessionsSortOrderControllerProvider);

  return ref.read(sessionRepositoryProvider).listByUserId(
        userId: userId,
        pivot: pivot,
        order: order,
      );
}
