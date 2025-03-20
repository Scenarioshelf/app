import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase;

import 'package:scenarioshelf/models/provisionally_registered_user/provisionally_registered_user.dart';
import 'package:scenarioshelf/utils/extension_types/id.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory User({
    required ID id,
    @JsonKey(name: 'username') required String name,
    required String? avatarUrl,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  factory User.fromProvisionallyRegisteredUser(ProvisionallyRegisteredUser provisionallyRegisteredUser) {
    if (provisionallyRegisteredUser.name == null) {
      throw const FormatException('ProvisionallyRegisteredUser.name is null');
    }

    return User(
      id: provisionallyRegisteredUser.id,
      name: provisionallyRegisteredUser.name!,
      avatarUrl: provisionallyRegisteredUser.avatarUrl,
    );
  }
  factory User.fromSupabase(supabase.User user) {
    return User(
      id: user.id as ID,
      name: user.userMetadata?['username'] as String,
      avatarUrl: user.userMetadata?['avatar_url'] as String?,
    );
  }
}
