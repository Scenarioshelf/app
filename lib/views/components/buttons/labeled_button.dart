import 'package:flutter/material.dart';

import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/constants/themes/colors/app_color.dart';
import 'package:scenarioshelf/constants/themes/widget_brightness.dart';

class LabeledButton extends StatelessWidget {
  const LabeledButton({
    required this.brightness,
    required this.onPressed,
    required this.label,
    this.isLoading = false,
    this.minimumSize,
    this.textStyle,
    this.leading,
    super.key,
  });

  final WidgetBrightness brightness;
  final VoidCallback? onPressed;
  final String label;
  final bool isLoading;
  final Size? minimumSize;
  final TextStyle? textStyle;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: isLoading ? null : onPressed,
      style: OutlinedButton.styleFrom(
        splashFactory: NoSplash.splashFactory,
        side: BorderSide(
          color: isLoading ? AppColor.of(context).ui.gray : Theme.of(context).colorScheme.primary,
          width: 0.5,
        ),
        backgroundColor: isLoading
            ? AppColor.of(context).ui.gray
            : switch (brightness) {
                WidgetBrightness.dark => Theme.of(context).colorScheme.primary,
                _ => null,
              },
        shape: const StadiumBorder(),
        minimumSize: minimumSize,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isLoading) ...[
            SizedBox.square(
              dimension: 16,
              child: CircularProgressIndicator(
                color: AppColor.of(context).ui.white,
                strokeWidth: 2,
              ),
            ),
            const SizedBox(width: MarginSize.small),
          ],
          if (!isLoading && leading != null) ...[
            leading!,
            const SizedBox(width: MarginSize.small),
          ],
          Text(
            label,
            style: TextStyle(
              color: isLoading
                  ? AppColor.of(context).ui.white
                  : switch (brightness) {
                      WidgetBrightness.light => Theme.of(context).colorScheme.primary,
                      WidgetBrightness.dark => Theme.of(context).colorScheme.onPrimary,
                    },
            ).merge(textStyle),
          ),
          if (isLoading) ...[
            const SizedBox.square(dimension: 16),
            const SizedBox(width: MarginSize.small),
          ],
        ],
      ),
    );
  }
}
