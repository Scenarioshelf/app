// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Participant {
  ID get id;
  @JsonKey(name: 'participant_role')
  ParticipantRole get role;
  String get name;
  ID? get userId;
  String? get xId;
  String? get discordId;
  Character? get character;

  /// Create a copy of Participant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ParticipantCopyWith<Participant> get copyWith =>
      _$ParticipantCopyWithImpl<Participant>(this as Participant, _$identity);

  /// Serializes this Participant to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Participant &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.xId, xId) || other.xId == xId) &&
            (identical(other.discordId, discordId) ||
                other.discordId == discordId) &&
            (identical(other.character, character) ||
                other.character == character));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, role, name, userId, xId, discordId, character);

  @override
  String toString() {
    return 'Participant(id: $id, role: $role, name: $name, userId: $userId, xId: $xId, discordId: $discordId, character: $character)';
  }
}

/// @nodoc
abstract mixin class $ParticipantCopyWith<$Res> {
  factory $ParticipantCopyWith(
          Participant value, $Res Function(Participant) _then) =
      _$ParticipantCopyWithImpl;
  @useResult
  $Res call(
      {ID id,
      @JsonKey(name: 'participant_role') ParticipantRole role,
      String name,
      ID? userId,
      String? xId,
      String? discordId,
      Character? character});

  $CharacterCopyWith<$Res>? get character;
}

/// @nodoc
class _$ParticipantCopyWithImpl<$Res> implements $ParticipantCopyWith<$Res> {
  _$ParticipantCopyWithImpl(this._self, this._then);

  final Participant _self;
  final $Res Function(Participant) _then;

  /// Create a copy of Participant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? role = null,
    Object? name = null,
    Object? userId = freezed,
    Object? xId = freezed,
    Object? discordId = freezed,
    Object? character = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
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
      character: freezed == character
          ? _self.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character?,
    ));
  }

  /// Create a copy of Participant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CharacterCopyWith<$Res>? get character {
    if (_self.character == null) {
      return null;
    }

    return $CharacterCopyWith<$Res>(_self.character!, (value) {
      return _then(_self.copyWith(character: value));
    });
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _Participant implements Participant {
  const _Participant(
      {required this.id,
      @JsonKey(name: 'participant_role') required this.role,
      required this.name,
      this.userId,
      this.xId,
      this.discordId,
      this.character});
  factory _Participant.fromJson(Map<String, dynamic> json) =>
      _$ParticipantFromJson(json);

  @override
  final ID id;
  @override
  @JsonKey(name: 'participant_role')
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
  final Character? character;

  /// Create a copy of Participant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ParticipantCopyWith<_Participant> get copyWith =>
      __$ParticipantCopyWithImpl<_Participant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ParticipantToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Participant &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.xId, xId) || other.xId == xId) &&
            (identical(other.discordId, discordId) ||
                other.discordId == discordId) &&
            (identical(other.character, character) ||
                other.character == character));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, role, name, userId, xId, discordId, character);

  @override
  String toString() {
    return 'Participant(id: $id, role: $role, name: $name, userId: $userId, xId: $xId, discordId: $discordId, character: $character)';
  }
}

/// @nodoc
abstract mixin class _$ParticipantCopyWith<$Res>
    implements $ParticipantCopyWith<$Res> {
  factory _$ParticipantCopyWith(
          _Participant value, $Res Function(_Participant) _then) =
      __$ParticipantCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ID id,
      @JsonKey(name: 'participant_role') ParticipantRole role,
      String name,
      ID? userId,
      String? xId,
      String? discordId,
      Character? character});

  @override
  $CharacterCopyWith<$Res>? get character;
}

/// @nodoc
class __$ParticipantCopyWithImpl<$Res> implements _$ParticipantCopyWith<$Res> {
  __$ParticipantCopyWithImpl(this._self, this._then);

  final _Participant _self;
  final $Res Function(_Participant) _then;

  /// Create a copy of Participant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? role = null,
    Object? name = null,
    Object? userId = freezed,
    Object? xId = freezed,
    Object? discordId = freezed,
    Object? character = freezed,
  }) {
    return _then(_Participant(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
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
      character: freezed == character
          ? _self.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character?,
    ));
  }

  /// Create a copy of Participant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CharacterCopyWith<$Res>? get character {
    if (_self.character == null) {
      return null;
    }

    return $CharacterCopyWith<$Res>(_self.character!, (value) {
      return _then(_self.copyWith(character: value));
    });
  }
}

// dart format on
