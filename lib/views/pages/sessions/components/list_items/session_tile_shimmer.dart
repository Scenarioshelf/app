import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';

import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/constants/themes/colors/app_color.dart';

class SessionTileShimmer extends StatelessWidget {
  const SessionTileShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const heightSize = 56.0;
    const paddingSize = PaddingSize.minimum;
    const imageSize = heightSize - paddingSize * 2;
    final size = MediaQuery.sizeOf(context);

    return SizedBox(
      height: heightSize,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Theme.of(context).colorScheme.surface,
        shadowColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(RadiusSize.small),
        ),
        child: Shimmer.fromColors(
          baseColor: AppColor.of(context).ui.shimmerBase,
          highlightColor: AppColor.of(context).ui.shimmerHighlight,
          child: Padding(
            padding: const EdgeInsets.all(paddingSize),
            child: Row(
              children: [
                Container(
                  width: imageSize - 8,
                  height: imageSize,
                  decoration: BoxDecoration(
                    color: AppColor.of(context).ui.shimmerBase,
                    borderRadius: BorderRadius.circular(RadiusSize.minimum),
                  ),
                ),
                const SizedBox(width: MarginSize.small),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width * 0.65,
                      height: FontSize.label * 1.2,
                      decoration: BoxDecoration(
                        color: AppColor.of(context).ui.shimmerBase,
                        borderRadius: BorderRadius.circular(FontSize.label * 1.2 / 2),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: size.width * 0.4,
                      height: FontSize.caption * 1.2,
                      decoration: BoxDecoration(
                        color: AppColor.of(context).ui.shimmerBase,
                        borderRadius: BorderRadius.circular(FontSize.caption * 1.2 / 2),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
