import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:scenarioshelf/models/provisionally_registered_user/provisionally_registered_user.dart';
import 'package:scenarioshelf/models/user/user.dart';
import 'package:scenarioshelf/providers/current_user/current_user_controller.dart';

part 'provisionally_registered_user_controller.g.dart';

@Riverpod(keepAlive: true)
class ProvisionallyRegisteredUserController extends _$ProvisionallyRegisteredUserController {
  @override
  ProvisionallyRegisteredUser? build() {
    return null;
  }

  void update(ProvisionallyRegisteredUser? user) {
    if (user != null && user.name != null) {
      ref.read(currentUserControllerProvider.notifier).update(User.fromProvisionallyRegisteredUser(user));
    }

    state = user;
  }
}
