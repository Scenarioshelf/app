import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/constants/themes/widget_brightness.dart';
import 'package:scenarioshelf/router/app_routes.dart';
import 'package:scenarioshelf/views/components/buttons/labeled_button.dart';
import 'package:scenarioshelf/views/pages/signing/components/signing_page_frame.dart';
import 'package:scenarioshelf/views/pages/signing/providers/signing/signing_controller.dart';

class SignUpPage extends HookConsumerWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.sizeOf(context);
    final formKey = useState(GlobalKey<FormState>());

    return SigningPageFrame(
      formKey: formKey.value,
      transactionButton: LabeledButton(
        brightness: WidgetBrightness.dark,
        isLoading: ref.watch(signingControllerProvider).isLoading,
        minimumSize: Size(size.width * 0.8 - 80, 40),
        onPressed: () async {
          if (!formKey.value.currentState!.validate()) {
            return;
          }

          final result = await ref.read(signingControllerProvider.notifier).signUpWithEmailAndPassword();
          if (result.isFailure) {
            return;
          }

          if (!context.mounted) {
            return;
          }

          const EmailVerificationRoute().go(context);
        },
        label: '登録',
        textStyle: const TextStyle(
          letterSpacing: MarginSize.small,
        ),
      ),
    );
  }
}
