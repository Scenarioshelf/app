import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:scenarioshelf/constants/domains/sort_order.dart';
import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/views/pages/sessions/providers/sessions_sort_order/sessions_sort_order_controller.dart';
import 'package:scenarioshelf/views/pages/sessions/providers/sessions_sort_pivot/sessions_sort_pivot.dart';
import 'package:scenarioshelf/views/pages/sessions/providers/sessions_sort_pivot/sessions_sort_pivot_controller.dart';

class SessionsSortBottomSheet extends ConsumerWidget {
  const SessionsSortBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const pivotList = SessionsSortPivot.values;
    final selectedOrder = ref.watch(sessionsSortOrderControllerProvider);
    final selectedPivot = ref.watch(sessionsSortPivotControllerProvider);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 50,
          child: Center(
            child: Text(
              '並び替え',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                height: 1,
                fontSize: FontSize.bottomSheetTitle,
                fontWeight: FontWeight.bold,
                letterSpacing: LetterSpace.medium,
              ),
            ),
          ),
        ),
        const Divider(
          height: 1,
          indent: 0,
          endIndent: 0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: PaddingSize.medium),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(PaddingSize.small),
                child: SizedBox(
                  width: double.infinity,
                  height: 44,
                  child: SegmentedButton(
                    style: SegmentedButton.styleFrom(
                      visualDensity: VisualDensity.comfortable,
                      textStyle: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        letterSpacing: LetterSpace.small,
                      ),
                    ),
                    segments: [
                      ButtonSegment(
                        value: SortOrder.asc,
                        label: Text(SortOrder.asc.label),
                        icon: const Icon(Icons.arrow_upward),
                      ),
                      ButtonSegment(
                        value: SortOrder.desc,
                        label: Text(SortOrder.desc.label),
                        icon: const Icon(Icons.arrow_downward),
                      ),
                    ],
                    selected: {selectedOrder},
                    onSelectionChanged: (orders) => ref.read(sessionsSortOrderControllerProvider.notifier).state = orders.first,
                  ),
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: pivotList.length,
                separatorBuilder: (context, index) => const Divider(
                  height: 1,
                  thickness: 1,
                ),
                itemBuilder: (context, index) {
                  final pivot = pivotList[index];

                  return ListTile(
                    title: Text(
                      pivot.display,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: FontSize.body,
                        fontWeight: FontWeight.bold,
                        letterSpacing: LetterSpace.small,
                      ),
                    ),
                    trailing: (selectedPivot == pivot)
                        ? Icon(
                            Icons.check_circle,
                            size: 20,
                            color: Theme.of(context).colorScheme.primary,
                          )
                        : null,
                    onTap: () => ref.read(sessionsSortPivotControllerProvider.notifier).state = pivot,
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
