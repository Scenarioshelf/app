// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signing_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SigningState {
  String get email;
  String get password;

  /// Create a copy of SigningState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SigningStateCopyWith<SigningState> get copyWith =>
      _$SigningStateCopyWithImpl<SigningState>(
          this as SigningState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SigningState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'SigningState(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class $SigningStateCopyWith<$Res> {
  factory $SigningStateCopyWith(
          SigningState value, $Res Function(SigningState) _then) =
      _$SigningStateCopyWithImpl;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$SigningStateCopyWithImpl<$Res> implements $SigningStateCopyWith<$Res> {
  _$SigningStateCopyWithImpl(this._self, this._then);

  final SigningState _self;
  final $Res Function(SigningState) _then;

  /// Create a copy of SigningState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _SigningState implements SigningState {
  const _SigningState({this.email = '', this.password = ''});

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;

  /// Create a copy of SigningState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SigningStateCopyWith<_SigningState> get copyWith =>
      __$SigningStateCopyWithImpl<_SigningState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SigningState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'SigningState(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$SigningStateCopyWith<$Res>
    implements $SigningStateCopyWith<$Res> {
  factory _$SigningStateCopyWith(
          _SigningState value, $Res Function(_SigningState) _then) =
      __$SigningStateCopyWithImpl;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$SigningStateCopyWithImpl<$Res>
    implements _$SigningStateCopyWith<$Res> {
  __$SigningStateCopyWithImpl(this._self, this._then);

  final _SigningState _self;
  final $Res Function(_SigningState) _then;

  /// Create a copy of SigningState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_SigningState(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
