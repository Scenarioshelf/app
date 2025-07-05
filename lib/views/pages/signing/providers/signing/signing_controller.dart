import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide User;

import 'package:scenarioshelf/repositories/auth/auth_api.dart';
import 'package:scenarioshelf/repositories/auth/auth_repository.dart';
import 'package:scenarioshelf/repositories/firebase/analytics/analytics_repository.dart';
import 'package:scenarioshelf/repositories/firebase/crashlytics/crashlytics_repository.dart';
import 'package:scenarioshelf/utils/exceptions/app_auth_exception.dart';
import 'package:scenarioshelf/utils/logger.dart';
import 'package:scenarioshelf/utils/result.dart';
import 'package:scenarioshelf/views/pages/signing/providers/provisionally_registered_user/provisionally_registered_user_controller.dart';
import 'package:scenarioshelf/views/pages/signing/providers/signing/states/signing_state.dart';

part 'signing_controller.g.dart';

@Riverpod(keepAlive: true)
class SigningController extends _$SigningController {
  late final AuthAPI _authRepository;

  @override
  FutureOr<SigningState> build() {
    _authRepository = ref.read(authRepositoryProvider);

    return const SigningState();
  }

  void resolve() {
    final current = state;
    if (current is! AsyncError) {
      return;
    }

    state = AsyncValue.data(state.valueOrNull ?? const SigningState());
  }

  void updateEmail(String email) {
    final current = state;
    final data = current.value;
    if (current is! AsyncData || data == null) {
      return;
    }

    state = AsyncValue.data(data.copyWith(email: email));
  }

  void updatePassword(String password) {
    final current = state;
    final data = current.value;
    if (current is! AsyncData || data == null) {
      return;
    }

    state = AsyncValue.data(data.copyWith(password: password));
  }

  Future<Result> signUpWithEmailAndPassword() async {
    final current = state;
    final data = current.value;
    if (current is! AsyncData || data == null) {
      return Result.failure;
    }

    state = const AsyncValue.loading();

    try {
      final user = await _authRepository.signUpWithEmailAndPassword(
        email: data.email,
        password: data.password,
      );

      ref.read(provisionallyRegisteredUserControllerProvider.notifier).update(user);

      state = AsyncValue.data(data);
      await ref.read(analyticsRepositoryProvider).logSignUp(signUpMethod: 'signUpWithEmailAndPassword');

      return Result.success;
    } on AppAuthException catch (error, stack) {
      logger.e(
        'Failed to Execute SigningController.signUpWithEmailAndPassword',
        error: error,
        stackTrace: stack,
      );
      await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
      state = AsyncValue.error(error, stack);

      return Result.failure;
    } on AuthException catch (error, stack) {
      /// Supabaseのログを見るとエラーの詳細がわかる
      ///
      /// 以下のエラーの場合は記載のSQLを叩いたら解決する（migrationファイルに記述済み）。
      /// `running db migrations: error executing migrations/20221208132122_backfill_email_last_sign_in_at.up.sql`
      /// -> `insert into auth.schema_migrations values ('20221208132122');`
      /// https://github.com/orgs/supabase/discussions/20722
      logger.e(
        'Failed to Execute SigningController.signUpWithEmailAndPassword',
        error: error,
        stackTrace: stack,
      );
      await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
      state = AsyncValue.error(
        AppAuthException(
          message: error.message,
          display: 'ユーザの登録に失敗しました',
        ),
        stack,
      );

      return Result.failure;
    } on Exception catch (error, stack) {
      logger.e(
        'Failed to Execute SigningController.signUpWithEmailAndPassword',
        error: error,
        stackTrace: stack,
      );
      await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
      state = AsyncValue.error(
        AppAuthException(
          message: error.toString(),
          display: '原因不明のエラーが発生しました',
        ),
        stack,
      );

      return Result.failure;
    }
  }

  Future<Result> resendConfirmEmail() async {
    final current = state;
    final data = current.value;
    if (current is! AsyncData || data == null) {
      return Result.failure;
    }

    try {
      await _authRepository.resendConfirmEmail(email: data.email);
      logger.i('Resend Confirm Email Success');

      return Result.success;
    } on AppAuthException catch (error, stack) {
      logger.e(
        'Failed to Execute SigningController.resendConfirmEmail',
        error: error,
        stackTrace: stack,
      );
      await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
      state = AsyncValue.error(
        AppAuthException(
          message: error.toString(),
          display: '再送に失敗しました',
        ),
        stack,
      );

      return Result.failure;
    } on Exception catch (error, stack) {
      logger.e(
        'Failed to Execute SigningController.resendConfirmEmail',
        error: error,
        stackTrace: stack,
      );
      await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
      state = AsyncValue.error(
        AppAuthException(
          message: error.toString(),
          display: '原因不明のエラーが発生しました',
        ),
        stack,
      );

      return Result.failure;
    }
  }

  Future<Result> changeEmail() async {
    final current = state;
    final data = current.value;
    if (current is! AsyncData || data == null) {
      return Result.failure;
    }

    state = const AsyncValue.loading();

    try {
      final id = ref.read(provisionallyRegisteredUserControllerProvider)?.id;
      if (id == null) {
        return Result.failure;
      }

      await _authRepository.delete(id: id);

      logger.i('Delete Provisionally User Success');
      state = AsyncValue.data(data);

      return Result.success;
    } on Exception catch (error, stack) {
      logger.e(
        'Failed to Execute SigningController.changeEmail',
        error: error,
        stackTrace: stack,
      );
      await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
      state = AsyncValue.error(
        const AppAuthException(
          message: 'User Deletion Failed',
          display: 'ユーザの削除に失敗しました',
        ),
        stack,
      );

      return Result.failure;
    }
  }

  Future<Result> signInWithEmailAndPassword() async {
    final current = state;
    final data = current.value;
    if (current is! AsyncData || data == null) {
      return Result.failure;
    }

    state = const AsyncValue.loading();

    try {
      final user = await _authRepository.signInWithEmailAndPassword(
        email: data.email,
        password: data.password,
      );

      ref.read(provisionallyRegisteredUserControllerProvider.notifier).update(user);

      await ref.read(analyticsRepositoryProvider).logLogin(loginMethod: 'signInWithEmailAndPassword');
      state = AsyncValue.data(data);

      return Result.success;
    } on AppAuthException catch (error, stack) {
      logger.e(
        'Failed to Execute SigningController.signInWithEmailAndPassword',
        error: error,
        stackTrace: stack,
      );
      await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
      state = AsyncValue.error(error, stack);

      return Result.failure;
    } on AuthException catch (error, stack) {
      logger.e(
        'Failed to Execute SigningController.signInWithEmailAndPassword',
        error: error,
        stackTrace: stack,
      );
      await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);

      switch (error.statusCode) {
        case '400':
          state = AsyncValue.error(
            AppAuthException(
              message: error.message,
              display: '認証メールの確認がされていません',
            ),
            stack,
          );
        default:
          state = AsyncValue.error(
            AppAuthException(
              message: error.message,
              display: 'ログインに失敗しました',
            ),
            stack,
          );
      }

      return Result.failure;
    } on Exception catch (error, stack) {
      logger.e(
        'Failed to Execute SigningController.signInWithEmailAndPassword',
        error: error,
        stackTrace: stack,
      );
      await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
      state = AsyncValue.error(
        AppAuthException(
          message: error.toString(),
          display: '原因不明のエラーが発生しました',
        ),
        stack,
      );

      return Result.failure;
    }
  }

  Future<Result> signInWithGoogle() async {
    final current = state;
    final data = current.value;
    if (current is! AsyncData || data == null) {
      return Result.failure;
    }

    state = const AsyncValue.loading();

    try {
      final user = await _authRepository.signInWithGoogle();

      ref.read(provisionallyRegisteredUserControllerProvider.notifier).update(user);

      state = AsyncValue.data(data);
      await ref.read(analyticsRepositoryProvider).logLogin(loginMethod: 'signInWithGoogle');

      return Result.success;
    } on Exception catch (error, stack) {
      logger.e(
        'Failed to Execute SigningController.signInWithGoogle',
        error: error,
        stackTrace: stack,
      );
      await ref.read(crashlyticsRepositoryProvider).recordError(error, stack);
      state = AsyncValue.error(
        const AppAuthException(
          message: 'Google Sign In Failed',
          display: 'ログインに失敗しました',
        ),
        stack,
      );

      return Result.failure;
    }
  }
}
