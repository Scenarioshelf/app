import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';

import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/constants/themes/colors/app_color.dart';
import 'package:scenarioshelf/views/pages/sessions/components/list_items/no_image.dart';

class SessionTileImage extends StatelessWidget {
  const SessionTileImage({
    required this.imageUrl,
    super.key,
  });

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(RadiusSize.minimum),
      child: (imageUrl != null)
          ? Image.network(
              imageUrl!,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }

                return Shimmer.fromColors(
                  baseColor: AppColor.of(context).ui.shimmerBase,
                  highlightColor: AppColor.of(context).ui.shimmerHighlight,
                  child: Container(
                    color: AppColor.of(context).ui.shimmerBase,
                  ),
                );
              },
              errorBuilder: (context, error, stackTrace) => NoImage(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary,
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(RadiusSize.minimum),
                ),
              ),
            )
          : NoImage(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.primary,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(RadiusSize.minimum),
              ),
            ),
    );
  }
}
