import 'package:flutter/material.dart';
import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/utils/logger.dart';
import 'package:scenarioshelf/views/components/images/no_image.dart';
import 'package:shimmer/shimmer.dart';

class SessionImage extends StatelessWidget {
  const SessionImage({
    required this.imageUrl,
    super.key,
  });

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(RadiusSize.minimum),
      ),
      child: (imageUrl != null)
          ? Image.network(
              imageUrl!,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }

                return Shimmer.fromColors(
                  baseColor: Theme.of(context).colorScheme.background,
                  highlightColor: Theme.of(context).colorScheme.onBackground,
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: Theme.of(context).colorScheme.background,
                  ),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                logger.e(
                  'Failed to load session image',
                  error: error,
                  stackTrace: stackTrace,
                );
                return NoImage(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primary,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(RadiusSize.minimum),
                  ),
                );
              },
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
