import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide User;

import 'package:scenarioshelf/constants/assets/gen/assets.gen.dart';
import 'package:scenarioshelf/models/provisionally_registered_user/provisionally_registered_user.dart';
import 'package:scenarioshelf/router/app_routes.dart';
import 'package:scenarioshelf/views/pages/signing/providers/provisionally_registered_user/provisionally_registered_user_controller.dart';

class SplashPage extends HookConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useMemoized(
      () async {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          final client = Supabase.instance.client;
          if (client.auth.currentUser == null) {
            const BootRoute().go(context);
            return;
          }

          final session = client.auth.currentSession;
          if (session == null) {
            const BootRoute().go(context);
            return;
          }

          final user = session.user;
          ref.read(provisionallyRegisteredUserControllerProvider.notifier).update(ProvisionallyRegisteredUser.fromSupabase(user));
          const HomeRoute().go(context);
          return;
        });
      },
      [],
    );

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Assets.images.logos.appLogo.image(
          width: size.width * 0.4,
        ),
      ),
    );
  }
}
