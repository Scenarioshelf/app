import 'package:flutter/material.dart';

import 'package:scenarioshelf/constants/themes/app_size.dart';

class StatusBanner extends StatelessWidget {
  const StatusBanner({
    required this.content,
    this.onDismiss,
    this.leading,
    this.actions,
    this.showCloseIcon = true,
    super.key,
  });

  factory StatusBanner.success({
    required Widget content,
  }) =>
      StatusBanner(
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
    required Widget content,
  }) =>
      StatusBanner(
        showCloseIcon: false,
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
        onDismiss: () {},
      );

  factory StatusBanner.error({
    required Widget content,
    List<Widget>? actions,
  }) =>
      StatusBanner(
        leading: Builder(
          builder: (context) => Icon(
            Icons.error_outline_outlined,
            color: Theme.of(context).colorScheme.error,
          ),
        ),
        actions: actions,
        content: content,
      );

  final Widget content;
  final Widget? leading;
  final List<Widget>? actions;
  final bool showCloseIcon;
  final VoidCallback? onDismiss;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: ElevationSize.banner,
        color: Theme.of(context).colorScheme.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(RadiusSize.small),
        ),
        child: Padding(
          padding: const EdgeInsets.all(PaddingSize.small),
          child: Row(
            children: [
              if (leading != null)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: PaddingSize.little),
                  child: leading,
                ),
              Expanded(
                child: DefaultTextStyle.merge(
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                  child: content,
                ),
              ),
              ...[
                if (actions != null) ...actions!,
                if (showCloseIcon)
                  IconButton(
                    constraints: const BoxConstraints(),
                    onPressed: onDismiss,
                    icon: Icon(
                      Icons.close,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
