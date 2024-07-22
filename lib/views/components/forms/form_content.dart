import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/constants/themes/colors/app_color.dart';

class FormContent extends StatelessWidget {
  const FormContent._({
    required this.child,
    Key? key,
  }) : super(key: key);

  factory FormContent.textFormField({
    TextInputAction? textInputAction,
    String? hintText,
  }) =>
      FormContent._(
        child: SizedBox(
          height: UISize.formContent,
          child: HookBuilder(
            builder: (context) {
              final controller = useTextEditingController();

              return TextFormField(
                controller: controller,
                textInputAction: textInputAction ?? TextInputAction.next,
                cursorHeight: FontSize.bodyLarge,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  constraints: const BoxConstraints(
                    minHeight: UISize.formContent - (PaddingSize.little + PaddingSize.little - 2),
                  ),
                  contentPadding: const EdgeInsets.only(
                    top: PaddingSize.little - 2,
                    left: PaddingSize.little,
                    right: PaddingSize.little,
                    bottom: PaddingSize.little,
                  ),
                  hintText: hintText,
                  hintStyle: TextStyle(
                    color: AppColor.of(context).text.hintOnSurfaceContainerHighest,
                    fontSize: FontSize.bodyLarge,
                    letterSpacing: 1.2,
                  ),
                ),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: FontSize.bodyLarge,
                  letterSpacing: 1.2,
                ),
              );
            },
          ),
        ),
      );

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
