import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_setting_state.freezed.dart';

@freezed
abstract class UserSettingState with _$UserSettingState {
  const factory UserSettingState({
    @Default('') String name,
    Uint8List? avatar,
  }) = _UserSettingState;
}
