import 'package:flutter/material.dart';
import 'package:scenarioshelf/views/components/dividers/labeled_divider.dart';

class FormSection extends StatelessWidget {
  const FormSection({
    required this.title,
    required this.children,
    super.key,
  });

  final LabeledDivider title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        title,
        Padding(
          padding: const EdgeInsets.all(16),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: children.length,
            itemBuilder: (context, index) {
              return children[index];
            },
          ),
        ),
      ],
    );
  }
}
