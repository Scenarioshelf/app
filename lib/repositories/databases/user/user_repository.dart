import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide User;

import 'package:scenarioshelf/models/user/user.dart';
import 'package:scenarioshelf/repositories/databases/user/user_api.dart';
import 'package:scenarioshelf/utils/exceptions/user_exception.dart';
import 'package:scenarioshelf/utils/extension_types/id.dart';

part 'user_repository.g.dart';

@riverpod
UserRepository userRepository(Ref ref) {
  // final authRepository = ref.read(authRepositoryProvider);
  // final avatarRepository = ref.read(userAvatarRepositoryProvider);

  return UserRepository(
      // authRepository: authRepository,
      // avatarRepository: avatarRepository,
      );
}

/// Profileテーブルと接続するRepository
///
/// ユーザ情報のアップデートはAuthRepositoryで行う
class UserRepository implements UserAPI {
  @override
  Future<User> get({required ID id}) async {
    final client = Supabase.instance.client;
    final response = await client.from('profiles').select().eq('id', id as String).single();

    if (response.isEmpty) {
      throw const UserException(
        message: 'Failed to Get User',
        display: 'ユーザ情報の取得に失敗しました',
      );
    }

    return User.fromJson(response);
  }
  // const UserRepository({
  //   required AuthAPI authRepository,
  //   required UserAvatarAPI avatarRepository,
  // })  : _authRepository = authRepository,
  //       _avatarRepository = avatarRepository;

  // final AuthAPI _authRepository;
  // final UserAvatarAPI _avatarRepository;

  // @override
  // Future<User> update({
  //   String? name,
  //   Uint8List? avatar,
  // }) async {
  //   final currentUser = await _authRepository.getCurrentUser();
  //   final client = Supabase.instance.client;

  //   final url = (avatar != null) ? await _avatarRepository.upsert(avatar) : currentUser.avatarUrl;
  //   final response = await client.auth.updateUser(
  //     UserAttributes(
  //       data: {
  //         'username': name ?? currentUser.name,
  //         'avatar_url': url,
  //       },
  //     ),
  //   );
  //   final user = response.user;
  //   if (user == null) {
  //     throw const UserException(
  //       message: 'Failed to Setup User',
  //       display: 'ユーザ情報の設定に失敗しました',
  //     );
  //   }

  //   return User.fromSupabase(user);
  // }
}
