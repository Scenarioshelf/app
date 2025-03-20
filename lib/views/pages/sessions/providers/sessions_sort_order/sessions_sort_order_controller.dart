import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:scenarioshelf/constants/domains/sort_order.dart';

part 'sessions_sort_order_controller.g.dart';

@riverpod
class SessionsSortOrderController extends _$SessionsSortOrderController {
  @override
  SortOrder build() => SortOrder.desc;

  @override
  set state(SortOrder order) => super.state = order;
}
