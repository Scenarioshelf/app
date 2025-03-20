// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_participant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NewParticipant {
  ID get id;
  ID get sessionId;
  ParticipantRole get role;
  String get name;
  ID? get userId;
  String? get xId;
  String? get discordId;
  String? get characterId;

  /// Create a copy of NewParticipant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NewParticipantCopyWith<NewParticipant> get copyWith =>
      _$NewParticipantCopyWithImpl<NewParticipant>(
          this as NewParticipant, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewParticipant &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.xId, xId) || other.xId == xId) &&
            (identical(other.discordId, discordId) ||
                other.discordId == discordId) &&
            (identical(other.characterId, characterId) ||
                other.characterId == characterId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, sessionId, role, name,
      userId, xId, discordId, characterId);

  @override
  String toString() {
    return 'NewParticipant(id: $id, sessionId: $sessionId, role: $role, name: $name, userId: $userId, xId: $xId, discordId: $discordId, characterId: $characterId)';
  }
}

/// @nodoc
abstract mixin class $NewParticipantCopyWith<$Res> {
  factory $NewParticipantCopyWith(
          NewParticipant value, $Res Function(NewParticipant) _then) =
      _$NewParticipantCopyWithImpl;
  @useResult
  $Res call(
      {ID id,
      ID sessionId,
      ParticipantRole role,
      String name,
      ID? userId,
      String? xId,
      String? discordId,
      String? characterId});
}

/// @nodoc
class _$NewParticipantCopyWithImpl<$Res>
    implements $NewParticipantCopyWith<$Res> {
  _$NewParticipantCopyWithImpl(this._self, this._then);

  final NewParticipant _self;
  final $Res Function(NewParticipant) _then;

  /// Create a copy of NewParticipant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sessionId = null,
    Object? role = null,
    Object? name = null,
    Object? userId = freezed,
    Object? xId = freezed,
    Object? discordId = freezed,
    Object? characterId = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      sessionId: null == sessionId
          ? _self.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as ID,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as ParticipantRole,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ID?,
      xId: freezed == xId
          ? _self.xId
          : xId // ignore: cast_nullable_to_non_nullable
              as String?,
      discordId: freezed == discordId
          ? _self.discordId
          : discordId // ignore: cast_nullable_to_non_nullable
              as String?,
      characterId: freezed == characterId
          ? _self.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _NewParticipantInserting implements NewParticipant {
  const _NewParticipantInserting(
      {required this.id,
      required this.sessionId,
      required this.role,
      required this.name,
      this.userId,
      this.xId,
      this.discordId,
      this.characterId});

  @override
  final ID id;
  @override
  final ID sessionId;
  @override
  final ParticipantRole role;
  @override
  final String name;
  @override
  final ID? userId;
  @override
  final String? xId;
  @override
  final String? discordId;
  @override
  final String? characterId;

  /// Create a copy of NewParticipant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NewParticipantInsertingCopyWith<_NewParticipantInserting> get copyWith =>
      __$NewParticipantInsertingCopyWithImpl<_NewParticipantInserting>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewParticipantInserting &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.xId, xId) || other.xId == xId) &&
            (identical(other.discordId, discordId) ||
                other.discordId == discordId) &&
            (identical(other.characterId, characterId) ||
                other.characterId == characterId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, sessionId, role, name,
      userId, xId, discordId, characterId);

  @override
  String toString() {
    return 'NewParticipant.inserting(id: $id, sessionId: $sessionId, role: $role, name: $name, userId: $userId, xId: $xId, discordId: $discordId, characterId: $characterId)';
  }
}

/// @nodoc
abstract mixin class _$NewParticipantInsertingCopyWith<$Res>
    implements $NewParticipantCopyWith<$Res> {
  factory _$NewParticipantInsertingCopyWith(_NewParticipantInserting value,
          $Res Function(_NewParticipantInserting) _then) =
      __$NewParticipantInsertingCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ID id,
      ID sessionId,
      ParticipantRole role,
      String name,
      ID? userId,
      String? xId,
      String? discordId,
      String? characterId});
}

/// @nodoc
class __$NewParticipantInsertingCopyWithImpl<$Res>
    implements _$NewParticipantInsertingCopyWith<$Res> {
  __$NewParticipantInsertingCopyWithImpl(this._self, this._then);

  final _NewParticipantInserting _self;
  final $Res Function(_NewParticipantInserting) _then;

  /// Create a copy of NewParticipant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? sessionId = null,
    Object? role = null,
    Object? name = null,
    Object? userId = freezed,
    Object? xId = freezed,
    Object? discordId = freezed,
    Object? characterId = freezed,
  }) {
    return _then(_NewParticipantInserting(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      sessionId: null == sessionId
          ? _self.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as ID,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as ParticipantRole,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ID?,
      xId: freezed == xId
          ? _self.xId
          : xId // ignore: cast_nullable_to_non_nullable
              as String?,
      discordId: freezed == discordId
          ? _self.discordId
          : discordId // ignore: cast_nullable_to_non_nullable
              as String?,
      characterId: freezed == characterId
          ? _self.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
