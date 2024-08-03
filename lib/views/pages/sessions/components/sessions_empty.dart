import 'package:flutter/material.dart';

import 'package:scenarioshelf/constants/assets/gen/assets.gen.dart';

class SessionsEmpty extends StatelessWidget {
  const SessionsEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: size.height * 0.4,
          child: Center(
            child: Assets.images.emptyStates.sessionsEmptyState.image(
              width: size.width * 0.55,
            ),
          ),
        ),
        Text(
          'セッションが記録されていません',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.outline,
            letterSpacing: 1.5,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
