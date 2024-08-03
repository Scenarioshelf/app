import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:scenarioshelf/constants/themes/colors/app_color.dart';
import 'package:scenarioshelf/views/components/images/avatars/dummy_avatar.dart';
import 'package:scenarioshelf/views/pages/user_setting/providers/user_setting_controller.dart';

class SetupAvatar extends ConsumerWidget {
  const SetupAvatar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.sizeOf(context);
    final userSettingState = ref.watch(userSettingControllerProvider);

    return Center(
      child: GestureDetector(
        onTap: () => ref.read(userSettingControllerProvider.notifier).pickAvatar(),
        child: SizedBox.square(
          dimension: size.width * 0.35,
          child: Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Stack(
              alignment: Alignment.center,
              fit: StackFit.expand,
              children: [
                Builder(
                  builder: (context) {
                    final data = userSettingState.value;

                    if (data?.avatar == null) {
                      return const DummyAvatar();
                    }

                    return Image.memory(
                      data!.avatar!,
                      fit: BoxFit.cover,
                    );
                  },
                ),
                Icon(
                  Icons.add_a_photo_outlined,
                  color: AppColor.of(context).ui.white.withOpacity(0.8),
                  size: size.width * 0.35 * 0.33,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
