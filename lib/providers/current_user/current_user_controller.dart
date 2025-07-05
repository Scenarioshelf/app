import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide User;

import 'package:scenarioshelf/models/user/user.dart';
import 'package:scenarioshelf/utils/logger.dart';

part 'current_user_controller.g.dart';

@Riverpod(keepAlive: true)
class CurrentUserController extends _$CurrentUserController {
  @override
  User? build() {
    final client = Supabase.instance.client;
    final user = client.auth.currentSession?.user;
    if (user == null || user.appMetadata['username'] == null) {
      return null;
    }

    return User.fromSupabase(user);
  }

  void update(User? user) {
    if (user != null) {
      logger.i('Update Current User: ${user.name}(${user.id})');
    } else {
      logger.i('Reset Current User');
    }

    state = user;
  }
}
