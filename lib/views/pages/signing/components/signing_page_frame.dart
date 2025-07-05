import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:scenarioshelf/constants/assets/gen/assets.gen.dart';
import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/router/router.dart';
import 'package:scenarioshelf/utils/exceptions/app_auth_exception.dart';
import 'package:scenarioshelf/utils/root_scaffold_messenger_key.dart';
import 'package:scenarioshelf/views/components/acknowledgements/status_banner.dart';
import 'package:scenarioshelf/views/pages/signing/components/signing_email_form.dart';
import 'package:scenarioshelf/views/pages/signing/components/signing_password_form.dart';
import 'package:scenarioshelf/views/pages/signing/providers/signing/signing_controller.dart';

class SigningPageFrame extends HookConsumerWidget {
  const SigningPageFrame({
    required this.formKey,
    required this.transactionButton,
    super.key,
  });

  final GlobalKey<FormState> formKey;
  final Widget transactionButton;

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
            left: size.width * 0.1,
            right: size.width * 0.1,
            bottom: MarginSize.doubleLarge,
          ),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Assets.images.logos.appLogo.image(
                      width: size.width * 0.4,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      const SizedBox(height: MarginSize.large),
                      const SigningEmailForm(),
                      const SizedBox(height: MarginSize.large),
                      const SigningPasswordForm(),
                      const Spacer(),
                      SizedBox(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox.square(
                              dimension: 40,
                              child: OutlinedButton(
                                onPressed: () => ref.read(routerProvider).pop(),
                                style: OutlinedButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  shape: CircleBorder(
                                    side: BorderSide(
                                      color: Theme.of(context).colorScheme.primary,
                                      width: 0.5,
                                    ),
                                  ),
                                ),
                                child: Icon(
                                  Icons.arrow_back_sharp,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ),
                            transactionButton,
                          ],
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
