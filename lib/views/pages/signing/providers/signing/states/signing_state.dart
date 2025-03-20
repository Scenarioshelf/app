import 'package:freezed_annotation/freezed_annotation.dart';

part 'signing_state.freezed.dart';

@freezed
abstract class SigningState with _$SigningState {
  const factory SigningState({
    @Default('') String email,
    @Default('') String password,
  }) = _SigningState;
}
