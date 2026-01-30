import 'package:flutter/material.dart';

class FormBlock extends StatelessWidget {
  const FormBlock({
    required this.children,
    this.isValid = true,
    this.validate,
    this.errorText,
    super.key,
  });

  final List<Widget> children;
  final bool isValid;
  final void Function()? validate;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: children.length,
            separatorBuilder: (context, index) => const Divider(
              height: 1,
              indent: 8,
              endIndent: 8,
            ),
            itemBuilder: (context, index) {
              return children[index];
            },
          ),
        ),
        if (!isValid)
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
              left: 8,
              right: 8,
            ),
            child: Text(
              errorText ?? '入力内容に誤りがあります',
              style: TextStyle(
                color: Theme.of(context).colorScheme.error,
                fontSize: 10,
                height: 1.2,
              ),
            ),
          ),
        const SizedBox(height: 24),
      ],
    );
  }
}
