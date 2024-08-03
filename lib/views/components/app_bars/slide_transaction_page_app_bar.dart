import 'package:flutter/material.dart';
import 'package:scenarioshelf/constants/themes/app_size.dart';

class SlideTransactionPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SlideTransactionPageAppBar({
    this.title,
    this.leading,
    this.actions,
    this.backgroundColor,
    super.key,
  });

  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;
  final Color? backgroundColor;

  @override
  Size get preferredSize => const Size.fromHeight(UISize.appToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.surface,
      leading: leading ??
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(
              Icons.close,
              size: 22,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
      title: DefaultTextStyle.merge(
        style: TextStyle(
          color: Theme.of(context).colorScheme.onSurface,
          height: 1,
          fontSize: FontSize.appBar,
          fontWeight: FontWeight.bold,
          letterSpacing: LetterSpace.medium,
        ),
        child: title ?? const SizedBox.shrink(),
      ),
      actions: actions,
    );
  }
}
