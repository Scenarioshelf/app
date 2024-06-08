import 'package:scenarioshelf/models/provisionally_registered_user/provisionally_registered_user.dart';
import 'package:scenarioshelf/models/user/user.dart';

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
  Future<void> signOut();
  Future<void> delete({required String id});
}