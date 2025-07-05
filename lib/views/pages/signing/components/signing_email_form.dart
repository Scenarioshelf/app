import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/views/pages/signing/providers/signing/signing_controller.dart';

class SigningEmailForm extends ConsumerWidget {
  const SigningEmailForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
      onChanged: (email) => ref.read(signingControllerProvider.notifier).updateEmail(email),
      decoration: const InputDecoration(
        constraints: BoxConstraints(
          minHeight: BoxConstraintsSize.form,
        ),
        contentPadding: EdgeInsets.zero,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: 'メールアドレス',
      ),
      style: TextStyle(
        color: Theme.of(context).colorScheme.onSurface,
        height: 1.2,
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (String? email) {
        email = email ?? '';

        final bool validEmail = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
        ).hasMatch(email);
        if (!validEmail) return '正しいメールアドレスを入力してください';

        ref.read(signingControllerProvider.notifier).updateEmail(email);

        return null;
      },
    );
  }
}
