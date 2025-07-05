import 'dart:typed_data';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:scenarioshelf/repositories/storages/user_avatar/user_avatar_api.dart';
import 'package:scenarioshelf/utils/exceptions/app_auth_exception.dart';

part 'user_avatar_repository.g.dart';

@riverpod
UserAvatarRepository userAvatarRepository(Ref ref) => const UserAvatarRepository();

/// ユーザのアバターを管理するRepository
class UserAvatarRepository implements UserAvatarAPI {
  const UserAvatarRepository();

  static const String bucketName = 'user_avatars';

  /// アバターをアップロード
  ///
  /// [avatar] はJPEG形式の画像データ
  /// アバターはauth.userに紐づくため、AuthRepositoryを通してUserのIDをフォルダ名としてアップロードする
  /// このRepositoryはAuthRepositoryから呼び出されるため、AuthRepositoryを参照すると循環参照になる
  @override
  Future<String> upsert(Uint8List avatar) async {
    final client = Supabase.instance.client;
    final response = await client.auth.getUser();
    final user = response.user;
    if (user == null) {
      throw const AppAuthException(
        message: 'User Not Found',
        display: 'ユーザーが見つかりません',
      );
    }

    final path = await client.storage.from(bucketName).uploadBinary(
          '${user.id}/avatar.jpeg',
          avatar,
          fileOptions: const FileOptions(
            upsert: true,
            contentType: 'image/jpeg',
          ),
        );

    return client.storage.from(bucketName).getPublicUrl(path.substring('$bucketName/'.length));
  }
}
