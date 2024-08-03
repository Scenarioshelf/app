import 'package:flutter/material.dart';
import 'package:scenarioshelf/constants/themes/app_size.dart';

class LabeledDivider extends StatelessWidget {
  const LabeledDivider({
    required this.label,
    super.key,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 20,
          child: Divider(
            endIndent: MarginSize.minimum,
            thickness: 1,
            height: 1,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: Theme.of(context).dividerColor,
            fontSize: 10,
            fontWeight: FontWeight.bold,
            letterSpacing: LetterSpace.medium,
          ),
        ),
        const Flexible(
          child: Divider(
            indent: MarginSize.minimum,
            thickness: 1,
            height: 1,
          ),
        ),
      ],
    );
  }
}
