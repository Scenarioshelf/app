import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shimmer/shimmer.dart';

import 'package:scenarioshelf/constants/themes/colors/app_color.dart';
import 'package:scenarioshelf/providers/current_user/current_user_controller.dart';
import 'package:scenarioshelf/utils/converters/color_extension.dart';
import 'package:scenarioshelf/utils/exceptions/user_exception.dart';
import 'package:scenarioshelf/utils/extension_types/id.dart';
import 'package:scenarioshelf/views/components/images/avatars/boring_avatars_mode.dart';
import 'package:scenarioshelf/views/pages/signing/providers/provisionally_registered_user/provisionally_registered_user_controller.dart';

class DummyAvatar extends HookConsumerWidget {
  const DummyAvatar({
    this.mode = BoringAvatarsMode.beam,
    this.size = 512,
    this.isSquare = false,
    this.colors,
    super.key,
  });

  final BoringAvatarsMode mode;
  final int size;
  final bool isSquare;
  final List<Color>? colors;

  String generateUrl({ID? id}) {
    const baseUrl = 'https://source.boringavatars.com';
    final colorCodes = this.colorCodes;
    final square = isSquare ? '&square' : '';
    final idPath = id == null ? '' : '/${id as String}';

    return '$baseUrl/${mode.name}/$size?colors=$colorCodes$square$idPath';
  }

  String get colorCodes {
    if (colors == null) {
      return [
        'ffffff',
        '000000',
        '7c4e29',
        '745945',
        '5E6136',
      ].join(',');
    }

    return colors!.map((color) => color.toHex()).join(',');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getBoringAvatar = useMemoized(
      () async {
        final id = ref.watch(currentUserControllerProvider)?.id ?? ref.watch(provisionallyRegisteredUserControllerProvider)?.id;
        final url = generateUrl(id: id);

        final loader = SvgNetworkLoader(url);
        final svg = await loader.prepareMessage(context);
        if (svg == null) {
          throw const UserException(
            message: 'Failed to Load Avatar',
            display: 'アバターの読み込みに失敗しました',
          );
        }

        return svg;
      },
      const [],
    );
    final snapshot = useFuture(getBoringAvatar);

    if (snapshot.connectionState == ConnectionState.waiting) {
      return Shimmer.fromColors(
        baseColor: AppColor.of(context).ui.shimmerBase,
        highlightColor: AppColor.of(context).ui.white,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: AppColor.of(context).ui.shimmerBase,
        ),
      );
    } else if (snapshot.hasError) {
      return Expanded(
        child: ColoredBox(
          color: AppColor.of(context).ui.shimmerBase,
        ),
      );
    }

    return SvgPicture.memory(
      snapshot.data!,
      fit: BoxFit.cover,
    );
  }
}
