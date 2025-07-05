import 'package:flutter/material.dart';

import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/utils/root_scaffold_messenger_key.dart';

class StatusBanner extends MaterialBanner {
  StatusBanner({
    required BuildContext context,
    required Widget content,
    super.leading,
    List<Widget>? actions,
    bool isVisibleClosedButton = true,
    super.key,
  }) : super(
          margin: const EdgeInsets.only(
            top: MarginSize.medium,
            left: MarginSize.medium,
            right: MarginSize.medium,
          ),
          elevation: ElevationSize.banner,
          backgroundColor: Theme.of(context).colorScheme.surfaceContainerLow,
          actions: actions ??
              [
                if (isVisibleClosedButton)
                  IconButton(
                    onPressed: () => rootScaffoldMessengerKey.currentState?.hideCurrentMaterialBanner(),
                    icon: Icon(
                      Icons.close,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  )
                else
                  const SizedBox.shrink(),
              ],
          content: DefaultTextStyle.merge(
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
              fontWeight: FontWeight.bold,
              height: 1.2,
              letterSpacing: 2,
            ),
            child: content,
          ),
        );

  factory StatusBanner.success({
    required BuildContext context,
    required Widget content,
  }) =>
      StatusBanner(
        context: context,
        leading: Builder(
          builder: (context) {
            return Icon(
              Icons.check_circle_outline,
              color: Theme.of(context).colorScheme.primary,
            );
          },
        ),
        content: content,
      );

  factory StatusBanner.loading({
    required BuildContext context,
    required Widget content,
  }) =>
      StatusBanner(
        context: context,
        isVisibleClosedButton: false,
        leading: SizedBox.square(
          dimension: 16,
          child: Builder(
            builder: (context) => CircularProgressIndicator(
              strokeWidth: 2,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
        content: content,
      );

  factory StatusBanner.error({
    required BuildContext context,
    required Widget content,
    List<Widget>? actions,
  }) =>
      StatusBanner(
        context: context,
        leading: Builder(
          builder: (context) => Icon(
            Icons.error_outline_outlined,
            color: Theme.of(context).colorScheme.error,
          ),
        ),
        actions: actions,
        content: content,
      );
}
