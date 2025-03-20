import 'dart:typed_data';

// 後々他の関数も実装するため一時的にLintを無視
// ignore: one_member_abstracts
abstract interface class UserAvatarAPI {
  Future<String> upsert(Uint8List avatar);
}
