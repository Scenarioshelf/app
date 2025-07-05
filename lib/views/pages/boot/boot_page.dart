import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:scenarioshelf/constants/assets/gen/assets.gen.dart';
import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/constants/themes/widget_brightness.dart';
import 'package:scenarioshelf/router/app_routes.dart';
import 'package:scenarioshelf/router/routes/boot_routes/sign_in_route.dart';
import 'package:scenarioshelf/router/routes/boot_routes/sign_up_route.dart';
import 'package:scenarioshelf/utils/exceptions/app_auth_exception.dart';
import 'package:scenarioshelf/utils/root_scaffold_messenger_key.dart';
import 'package:scenarioshelf/views/components/acknowledgements/status_banner.dart';
import 'package:scenarioshelf/views/components/buttons/labeled_button.dart';
import 'package:scenarioshelf/views/pages/signing/providers/signing/signing_controller.dart';

class BootPage extends HookConsumerWidget {
  const BootPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(signingControllerProvider, (previous, next) {
      if (previous is! AsyncError && next is AsyncError) {
        rootScaffoldMessengerKey.currentState?.clearMaterialBanners();

        final Object? error = next.error;
        final String message = error is AppAuthException ? error.indicate() : '原因不明のエラーが発生しました';

        rootScaffoldMessengerKey.currentState?.showMaterialBanner(
          StatusBanner.error(
            context: context,
            content: Text(message),
          ),
        );

        ref.read(signingControllerProvider.notifier).resolve();
      }
    });

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: size.width * 0.05,
            right: size.width * 0.05,
            bottom: size.width * 0.05,
          ),
          child: Column(
            children: [
              const Spacer(),
              Assets.images.logos.appLogo.image(
                width: size.width * 0.4,
              ),
              const Spacer(),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  LabeledButton(
                    brightness: WidgetBrightness.dark,
                    minimumSize: Size(size.width * 0.8, 40),
                    onPressed: () async => const SignUpRoute().push(context),
                    label: '新規登録',
                    textStyle: const TextStyle(
                      letterSpacing: MarginSize.small,
                    ),
                  ),
                  LabeledButton(
                    brightness: WidgetBrightness.light,
                    minimumSize: Size(size.width * 0.8, 40),
                    onPressed: () async => const SignInRoute().push(context),
                    label: 'ログイン',
                    textStyle: const TextStyle(
                      letterSpacing: MarginSize.small,
                    ),
                  ),
                  Divider(
                    color: Theme.of(context).colorScheme.primary,
                    thickness: 0.4,
                    indent: size.width * 0.05,
                    endIndent: size.width * 0.05,
                    height: 12,
                  ),
                  LabeledButton(
                    brightness: WidgetBrightness.light,
                    minimumSize: Size(size.width * 0.8, 40),
                    onPressed: () async {
                      final result = await ref.read(signingControllerProvider.notifier).signInWithGoogle();
                      if (result.isFailure) {
                        return;
                      }

                      if (!context.mounted) {
                        return;
                      }

                      rootScaffoldMessengerKey.currentState?.clearMaterialBanners();
                      const HomeRoute().go(context);
                    },
                    label: 'Sign in with Google',
                    leading: Assets.images.logos.googleLogo.image(
                      height: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
