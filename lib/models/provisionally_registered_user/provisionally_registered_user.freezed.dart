// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'provisionally_registered_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProvisionallyRegisteredUser {
  ID get id;
  String? get name;
  String? get avatarUrl;

  /// Create a copy of ProvisionallyRegisteredUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProvisionallyRegisteredUserCopyWith<ProvisionallyRegisteredUser>
      get copyWith => _$ProvisionallyRegisteredUserCopyWithImpl<
              ProvisionallyRegisteredUser>(
          this as ProvisionallyRegisteredUser, _$identity);

  /// Serializes this ProvisionallyRegisteredUser to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProvisionallyRegisteredUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatarUrl);

  @override
  String toString() {
    return 'ProvisionallyRegisteredUser(id: $id, name: $name, avatarUrl: $avatarUrl)';
  }
}

/// @nodoc
abstract mixin class $ProvisionallyRegisteredUserCopyWith<$Res> {
  factory $ProvisionallyRegisteredUserCopyWith(
          ProvisionallyRegisteredUser value,
          $Res Function(ProvisionallyRegisteredUser) _then) =
      _$ProvisionallyRegisteredUserCopyWithImpl;
  @useResult
  $Res call({ID id, String? name, String? avatarUrl});
}

/// @nodoc
class _$ProvisionallyRegisteredUserCopyWithImpl<$Res>
    implements $ProvisionallyRegisteredUserCopyWith<$Res> {
  _$ProvisionallyRegisteredUserCopyWithImpl(this._self, this._then);

  final ProvisionallyRegisteredUser _self;
  final $Res Function(ProvisionallyRegisteredUser) _then;

  /// Create a copy of ProvisionallyRegisteredUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _self.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ProvisionallyRegisteredUser implements ProvisionallyRegisteredUser {
  const _ProvisionallyRegisteredUser(
      {required this.id, required this.name, this.avatarUrl});
  factory _ProvisionallyRegisteredUser.fromJson(Map<String, dynamic> json) =>
      _$ProvisionallyRegisteredUserFromJson(json);

  @override
  final ID id;
  @override
  final String? name;
  @override
  final String? avatarUrl;

  /// Create a copy of ProvisionallyRegisteredUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProvisionallyRegisteredUserCopyWith<_ProvisionallyRegisteredUser>
      get copyWith => __$ProvisionallyRegisteredUserCopyWithImpl<
          _ProvisionallyRegisteredUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProvisionallyRegisteredUserToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProvisionallyRegisteredUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatarUrl);

  @override
  String toString() {
    return 'ProvisionallyRegisteredUser(id: $id, name: $name, avatarUrl: $avatarUrl)';
  }
}

/// @nodoc
abstract mixin class _$ProvisionallyRegisteredUserCopyWith<$Res>
    implements $ProvisionallyRegisteredUserCopyWith<$Res> {
  factory _$ProvisionallyRegisteredUserCopyWith(
          _ProvisionallyRegisteredUser value,
          $Res Function(_ProvisionallyRegisteredUser) _then) =
      __$ProvisionallyRegisteredUserCopyWithImpl;
  @override
  @useResult
  $Res call({ID id, String? name, String? avatarUrl});
}

/// @nodoc
class __$ProvisionallyRegisteredUserCopyWithImpl<$Res>
    implements _$ProvisionallyRegisteredUserCopyWith<$Res> {
  __$ProvisionallyRegisteredUserCopyWithImpl(this._self, this._then);

  final _ProvisionallyRegisteredUser _self;
  final $Res Function(_ProvisionallyRegisteredUser) _then;

  /// Create a copy of ProvisionallyRegisteredUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_ProvisionallyRegisteredUser(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _self.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
