// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_setting_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserSettingState {
  String get name;
  Uint8List? get avatar;

  /// Create a copy of UserSettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserSettingStateCopyWith<UserSettingState> get copyWith =>
      _$UserSettingStateCopyWithImpl<UserSettingState>(
          this as UserSettingState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserSettingState &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.avatar, avatar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(avatar));

  @override
  String toString() {
    return 'UserSettingState(name: $name, avatar: $avatar)';
  }
}

/// @nodoc
abstract mixin class $UserSettingStateCopyWith<$Res> {
  factory $UserSettingStateCopyWith(
          UserSettingState value, $Res Function(UserSettingState) _then) =
      _$UserSettingStateCopyWithImpl;
  @useResult
  $Res call({String name, Uint8List? avatar});
}

/// @nodoc
class _$UserSettingStateCopyWithImpl<$Res>
    implements $UserSettingStateCopyWith<$Res> {
  _$UserSettingStateCopyWithImpl(this._self, this._then);

  final UserSettingState _self;
  final $Res Function(UserSettingState) _then;

  /// Create a copy of UserSettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avatar = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _UserSettingState implements UserSettingState {
  const _UserSettingState({this.name = '', this.avatar});

  @override
  @JsonKey()
  final String name;
  @override
  final Uint8List? avatar;

  /// Create a copy of UserSettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserSettingStateCopyWith<_UserSettingState> get copyWith =>
      __$UserSettingStateCopyWithImpl<_UserSettingState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserSettingState &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.avatar, avatar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(avatar));

  @override
  String toString() {
    return 'UserSettingState(name: $name, avatar: $avatar)';
  }
}

/// @nodoc
abstract mixin class _$UserSettingStateCopyWith<$Res>
    implements $UserSettingStateCopyWith<$Res> {
  factory _$UserSettingStateCopyWith(
          _UserSettingState value, $Res Function(_UserSettingState) _then) =
      __$UserSettingStateCopyWithImpl;
  @override
  @useResult
  $Res call({String name, Uint8List? avatar});
}

/// @nodoc
class __$UserSettingStateCopyWithImpl<$Res>
    implements _$UserSettingStateCopyWith<$Res> {
  __$UserSettingStateCopyWithImpl(this._self, this._then);

  final _UserSettingState _self;
  final $Res Function(_UserSettingState) _then;

  /// Create a copy of UserSettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? avatar = freezed,
  }) {
    return _then(_UserSettingState(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

// dart format on
