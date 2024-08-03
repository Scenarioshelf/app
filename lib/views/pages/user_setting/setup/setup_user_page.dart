import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/constants/themes/widget_brightness.dart';
import 'package:scenarioshelf/providers/current_user/current_user_controller.dart';
import 'package:scenarioshelf/router/app_routes.dart';
import 'package:scenarioshelf/utils/exceptions/user_exception.dart';
import 'package:scenarioshelf/utils/root_scaffold_messenger_key.dart';
import 'package:scenarioshelf/views/components/acknowledgements/status_banner.dart';
import 'package:scenarioshelf/views/components/buttons/labeled_button.dart';
import 'package:scenarioshelf/views/pages/user_setting/providers/user_setting_controller.dart';
import 'package:scenarioshelf/views/pages/user_setting/setup/components/setup_avatar.dart';

class SetupUserPage extends HookConsumerWidget {
  const SetupUserPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(userSettingControllerProvider, (previous, next) {
      if (previous is! AsyncError && next is AsyncError) {
        rootScaffoldMessengerKey.currentState?.clearMaterialBanners();

        final Object? error = next.error;
        final String message = error is UserException ? error.indicate() : '原因不明のエラーが発生しました';

        rootScaffoldMessengerKey.currentState?.showMaterialBanner(
          StatusBanner.error(
            context: context,
            content: Text(message),
          ),
        );

        ref.read(userSettingControllerProvider.notifier).resolve();
      }
    });

    final size = MediaQuery.sizeOf(context);
    final formKey = useState(GlobalKey<FormState>());

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: size.width * 0.1,
            right: size.width * 0.1,
            bottom: MarginSize.doubleLarge,
          ),
          child: Form(
            key: formKey.value,
            child: Column(
              children: [
                const Expanded(child: SetupAvatar()),
                Expanded(
                  child: Column(
                    children: [
                      const SizedBox(height: MarginSize.large),
                      TextFormField(
                        onChanged: (name) => ref.read(userSettingControllerProvider.notifier).updateName(name),
                        decoration: const InputDecoration(
                          constraints: BoxConstraints(
                            minHeight: BoxConstraintsSize.form,
                          ),
                          contentPadding: EdgeInsets.zero,
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'ユーザ名',
                        ),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurface,
                          height: 1.2,
                        ),
                        keyboardType: TextInputType.name,
                        validator: (String? name) {
                          name = name ?? '';

                          final bool validEmail = RegExp(
                            r'^[0-9a-zA-Zぁ-んァ-ヶ一-龠々ー]+$',
                          ).hasMatch(name);
                          if (!validEmail) return '半角英数字と日本語のみのユーザ名を設定してください';

                          ref.read(userSettingControllerProvider.notifier).updateName(name);

                          return null;
                        },
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 40,
                        child: LabeledButton(
                          brightness: WidgetBrightness.dark,
                          isLoading: ref.watch(userSettingControllerProvider).isLoading,
                          minimumSize: Size(size.width * 0.8, 40),
                          onPressed: () async {
                            if (!formKey.value.currentState!.validate()) return;

                            await ref.read(userSettingControllerProvider.notifier).setup();

                            final user = ref.read(currentUserControllerProvider);
                            if (user != null && context.mounted) {
                              const HomeRoute().go(context);
                            }
                          },
                          label: '登録',
                          textStyle: const TextStyle(
                            letterSpacing: MarginSize.small,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
