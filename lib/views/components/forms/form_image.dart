import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scenarioshelf/constants/themes/colors/app_color.dart';

class FormImage extends HookConsumerWidget {
  const FormImage({
    this.image,
    this.size = Size.infinite,
    this.onTap,
    super.key,
  });

  final Size size;
  final Uint8List? image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: size.width,
          height: size.height,
          child: GestureDetector(
            onTap: onTap,
            child: Stack(
              alignment: Alignment.center,
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surfaceContainerHighest,
                    ),
                    child: image != null
                        ? Image.memory(
                            image!,
                            fit: BoxFit.cover,
                          )
                        : null,
                  ),
                ),
                Icon(
                  Icons.add_a_photo_outlined,
                  color: AppColor.of(context).ui.white.withOpacity(0.8),
                  size: size.width * 0.2,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
