import 'package:scenarioshelf/models/user/user.dart';
import 'package:scenarioshelf/utils/extension_types/id.dart';

// 後々他の関数も実装するため一時的にLintを無視
// ignore: one_member_abstracts
abstract interface class UserAPI {
  Future<User> get({required ID id});
}
