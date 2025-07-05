import 'dart:typed_data';

import 'package:scenarioshelf/models/provisionally_registered_user/provisionally_registered_user.dart';
import 'package:scenarioshelf/models/user/user.dart';
import 'package:scenarioshelf/utils/extension_types/id.dart';

abstract interface class AuthAPI {
  Future<User> getCurrentUser();
  Future<ProvisionallyRegisteredUser?> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<void> resendConfirmEmail({
    required String email,
  });
  Future<ProvisionallyRegisteredUser> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<ProvisionallyRegisteredUser> signInWithGoogle();
  Future<User> update({
    String? email,
    String? password,
    String? username,
    Uint8List? avatar,
  });
  Future<void> signOut();
  Future<void> delete({required ID id});
}
