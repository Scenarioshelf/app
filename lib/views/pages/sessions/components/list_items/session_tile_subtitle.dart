import 'package:flutter/material.dart';

import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/models/session/session.dart';
import 'package:scenarioshelf/views/pages/sessions/providers/sessions_sort_pivot/sessions_sort_pivot.dart';

class SessionTileSubtitle extends StatelessWidget {
  const SessionTileSubtitle({
    required this.icon,
    this.label,
    super.key,
  });

  factory SessionTileSubtitle.scenarioTitle({
    required Session session,
  }) =>
      SessionTileSubtitle(
        icon: Icons.translate_outlined,
        label: session.scenario.sortTitle,
      );

  factory SessionTileSubtitle.scenarioSystem({
    required Session session,
  }) =>
      SessionTileSubtitle(
        icon: Icons.sports_esports_outlined,
        label: session.scenario.system.name,
      );

  factory SessionTileSubtitle.scenarioAuthor({
    required Session session,
  }) =>
      SessionTileSubtitle(
        icon: Icons.sports_esports_outlined,
        label: session.scenario.author,
      );

  factory SessionTileSubtitle.myRole({
    required Session session,
  }) =>
      SessionTileSubtitle(
        icon: Icons.face_outlined,
        label: session.myRoleDisplay,
      );

  factory SessionTileSubtitle.schedule({
    required Session session,
  }) =>
      SessionTileSubtitle(
        icon: Icons.calendar_month_outlined,
        label: session.eventDayDisplay,
      );

  factory SessionTileSubtitle.sortPivot({
    required SessionsSortPivot pivot,
    required Session session,
  }) {
    switch (pivot) {
      case SessionsSortPivot.scenarioTitle:
        return SessionTileSubtitle.scenarioTitle(session: session);
      case SessionsSortPivot.scenarioSystem:
        return SessionTileSubtitle.scenarioSystem(session: session);
      case SessionsSortPivot.scenarioAuthor:
        return SessionTileSubtitle.scenarioAuthor(session: session);
      case SessionsSortPivot.schedule:
        return SessionTileSubtitle.schedule(session: session);
      case SessionsSortPivot.createdAt:
        return SessionTileSubtitle.myRole(session: session);
    }
  }

  final IconData icon;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 12,
          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
        ),
        const SizedBox(width: MarginSize.minimum),
        Text(
          label ?? '未登録',
          style: TextStyle(
            fontSize: FontSize.caption,
            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
          ),
        ),
      ],
    );
  }
}
