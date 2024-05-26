import 'package:flutter/foundation.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide User;

import 'package:scenarioshelf/models/provisionally_registered_user/provisionally_registered_user.dart';
import 'package:scenarioshelf/repositories/apis/auth_api.dart';
import 'package:scenarioshelf/repositories/firebase/firebase_options/dev/firebase_options.dart' as dev_firebase_options;
import 'package:scenarioshelf/repositories/firebase/firebase_options/prod/firebase_options.dart' as prod_firebase_options;
import 'package:scenarioshelf/repositories/firebase/firebase_options/stg/firebase_options.dart' as stg_firebase_options;
import 'package:scenarioshelf/utils/environment.dart';
import 'package:scenarioshelf/utils/exceptions/app_auth_exception.dart';
import 'package:scenarioshelf/utils/logger.dart';

part 'auth_repository.g.dart';

// ignore: constant_identifier_names
const EMAIL_REDIRECT_URL = 'jp.scenarioshelf://login-callback/';

@Riverpod(keepAlive: true)
AuthRepository authRepository(AuthRepositoryRef _) => const AuthRepository();

class AuthRepository implements AuthAPI {
  const AuthRepository();

  /// メールアドレスとパスワードでアカウントをサインアップ
  ///
  /// SupabaseのAuthにメールアドレスとパスワードでサインアップする。
  /// サインアップに成功すると登録されたメールアドレスに認証メールが送信される。
  /// 認証メールに記載されているリンクをクリックすることで認証が完了し、サインインが可能になる。
  /// リンクはモバイルの場合Deep Linksを使用しアプリ画面に戻す（[EMAIL_REDIRECT_URL]でコールバックを指定する）。
  ///
  /// また、DatabaseのFunctionによりAuthにデータが追加されると、`profiles`テーブルにもスキーマが生成される。
  ///
  /// サインアップ成功時点では、サインインはされていない状態のためセッションは生成されない。
  /// しかし、メールアドレスの変更などでユーザIDが必要なためユーザ情報はセッション情報を用いずに返却する。
  @override
  Future<ProvisionallyRegisteredUser?> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final client = Supabase.instance.client;
    final response = await client.auth.signUp(
      email: email,
      password: password,
      emailRedirectTo: kIsWeb ? null : EMAIL_REDIRECT_URL,
    );
    final user = response.user;
    if (user == null) {
      return null;
    }

    logger.i('Signed Up with Email and Password');
    return ProvisionallyRegisteredUser.fromSupabase(user);
  }

  /// 認証メールを再送信
  ///
  /// サインアップ済みのメールアドレスに対して認証メールを再送信する。
  @override
  Future<void> resendConfirmEmail({required String email}) async {
    final client = Supabase.instance.client;
    final response = await client.auth.resend(
      type: OtpType.signup,
      email: email,
      emailRedirectTo: kIsWeb ? null : EMAIL_REDIRECT_URL,
    );

    logger
      ..i('Resend Confirm Email')
      ..i('Response messageId: ${response.messageId}');

    return;
  }

  /// メールアドレスとパスワードでサインイン
  ///
  /// SupabaseのAuthにメールアドレスとパスワードでサインインする。
  /// サインイン後のユーザ情報はセッションから取得する。
  /// ユーザ初期化が未完了の可能性があるため[ProvisionallyRegisteredUser]で返却する。
  @override
  Future<ProvisionallyRegisteredUser> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final client = Supabase.instance.client;
    final response = await client.auth.signInWithPassword(email: email, password: password);
    final user = response.session?.user;
    if (user == null) {
      throw const AppAuthException(
        message: 'User Not Found',
        display: 'ユーザーが見つかりません',
      );
    }

    logger.i('Signed In with Email and Password');
    return ProvisionallyRegisteredUser.fromSupabase(user);
  }

  /// Googleアカウントでサインイン
  ///
  /// 関数呼び出し時に立ち上がるGoogleの認証画面でサインインする。
  /// 各OSでクライアントIDが必要だが、これはFirebase（GCP）上で管理されているものを利用している。
  ///
  /// - clientId: iOSの場合のみ必要
  /// - serverClientId: Androidの場合のみ必要
  ///
  /// 実装参考ドキュメント：
  /// https://supabase.com/docs/reference/dart/auth-signinwithidtoken
  @override
  Future<ProvisionallyRegisteredUser> signInWithGoogle() async {
    final options = switch (Environment.flavor) {
      Flavor.dev => dev_firebase_options.DefaultFirebaseOptions.currentPlatform,
      Flavor.stg => stg_firebase_options.DefaultFirebaseOptions.currentPlatform,
      Flavor.prod => prod_firebase_options.DefaultFirebaseOptions.currentPlatform,
    };
    final googleUser = await GoogleSignIn(
      clientId: options.iosClientId,
      serverClientId: dotenv.get('GOOGLE_AUTH_WEB_CLIENT_ID'),
    ).signIn();
    final googleAuth = await googleUser?.authentication;
    final accessToken = googleAuth?.accessToken;
    if (accessToken == null) {
      throw const AppAuthException(
        message: 'Google Sign in No Access Token',
        display: 'Googleアカウントでのサインインに失敗しました',
      );
    }
    final idToken = googleAuth?.idToken;
    if (idToken == null) {
      throw const AppAuthException(
        message: 'Google Sign in No ID Token',
        display: 'Googleアカウントでのサインインに失敗しました',
      );
    }

    final client = Supabase.instance.client;
    final response = await client.auth.signInWithIdToken(
      provider: OAuthProvider.google,
      accessToken: accessToken,
      idToken: idToken,
    );
    final user = response.user;
    if (user == null) {
      throw const AppAuthException(
        message: 'User Not Found',
        display: 'ユーザーが見つかりません',
      );
    }

    logger.i('Signed In with Google Account');
    return ProvisionallyRegisteredUser.fromSupabase(user);
  }

  /// サインアウト
  @override
  Future<void> signOut() async {
    logger.i('Signed Out');
    await Supabase.instance.client.auth.signOut();
  }

  /// ユーザ情報の削除
  ///
  /// 退会処理やユーザ初期化前にメールアドレスを変更する際に使用する。
  /// ユーザIDを指定して削除するが、自身のユーザID以外を指定することはできない。
  @override
  Future<void> delete({required String id}) async {
    final client = SupabaseClient(
      dotenv.get('SUPABASE_URL'),
      dotenv.get('SUPABASE_SERVICE_ROLE_KEY'),
    );
    await client.auth.admin.deleteUser(id);
    await client.dispose();
    logger.i('Delete User: $id Success');
  }
}
