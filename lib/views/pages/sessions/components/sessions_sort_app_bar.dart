import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/utils/extension_types/id.dart';
import 'package:scenarioshelf/views/pages/sessions/components/sessions_sort_bottom_sheet.dart';
import 'package:scenarioshelf/views/pages/sessions/providers/sessions/sessions_controller.dart';
import 'package:scenarioshelf/views/pages/sessions/providers/sessions_sort_pivot/sessions_sort_pivot_controller.dart';

class SessionsSortAppBar extends ConsumerWidget {
  const SessionsSortAppBar({
    required this.userId,
    super.key,
  });

  final ID userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sessions = ref.watch(sessionControllerProvider(userId));
    final pivot = ref.watch(sessionsSortPivotControllerProvider);

    return SliverAppBar(
      centerTitle: false,
      floating: true,
      snap: true,
      toolbarHeight: 32,
      surfaceTintColor: Theme.of(context).colorScheme.surface,
      backgroundColor: Theme.of(context).colorScheme.surface.withAlpha(200),
      flexibleSpace: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 3,
            sigmaY: 3,
          ),
          child: Container(
            color: Colors.transparent,
          ),
        ),
      ),
      title: RichText(
        text: TextSpan(
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface,
            fontSize: FontSize.appBar,
          ),
          children: [
            TextSpan(
              text: '${sessions.valueOrNull?.length ?? 0} ',
              style: const TextStyle(
                fontSize: FontSize.appBar,
                fontWeight: FontWeight.bold,
              ),
            ),
            const TextSpan(
              text: '件のセッション記録',
              style: TextStyle(
                fontSize: FontSize.subAppBar,
              ),
            ),
          ],
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () async => showModalBottomSheet(
            context: context,
            useSafeArea: true,
            backgroundColor: Theme.of(context).colorScheme.surface,
            routeSettings: const RouteSettings(
              name: 'sessions-sort-bottom-sheet',
            ),
            builder: (context) => const SessionsSortBottomSheet(),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.sort,
                  size: IconSize.small,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: MarginSize.minimum),
                Text(
                  pivot.display,
                  style: const TextStyle(
                    letterSpacing: 1.5,
                    fontSize: FontSize.appBarOption,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
