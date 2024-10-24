// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Participant _$ParticipantFromJson(Map<String, dynamic> json) {
  return _Participant.fromJson(json);
}

/// @nodoc
mixin _$Participant {
  ID get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'participant_role')
  ParticipantRole get role => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  ID? get userId => throw _privateConstructorUsedError;
  String? get xId => throw _privateConstructorUsedError;
  String? get discordId => throw _privateConstructorUsedError;
  Character? get character => throw _privateConstructorUsedError;

  /// Serializes this Participant to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Participant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParticipantCopyWith<Participant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantCopyWith<$Res> {
  factory $ParticipantCopyWith(
          Participant value, $Res Function(Participant) then) =
      _$ParticipantCopyWithImpl<$Res, Participant>;
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
class _$ParticipantCopyWithImpl<$Res, $Val extends Participant>
    implements $ParticipantCopyWith<$Res> {
  _$ParticipantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as ParticipantRole,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ID?,
      xId: freezed == xId
          ? _value.xId
          : xId // ignore: cast_nullable_to_non_nullable
              as String?,
      discordId: freezed == discordId
          ? _value.discordId
          : discordId // ignore: cast_nullable_to_non_nullable
              as String?,
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character?,
    ) as $Val);
  }

  /// Create a copy of Participant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CharacterCopyWith<$Res>? get character {
    if (_value.character == null) {
      return null;
    }

    return $CharacterCopyWith<$Res>(_value.character!, (value) {
      return _then(_value.copyWith(character: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ParticipantImplCopyWith<$Res>
    implements $ParticipantCopyWith<$Res> {
  factory _$$ParticipantImplCopyWith(
          _$ParticipantImpl value, $Res Function(_$ParticipantImpl) then) =
      __$$ParticipantImplCopyWithImpl<$Res>;
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
class __$$ParticipantImplCopyWithImpl<$Res>
    extends _$ParticipantCopyWithImpl<$Res, _$ParticipantImpl>
    implements _$$ParticipantImplCopyWith<$Res> {
  __$$ParticipantImplCopyWithImpl(
      _$ParticipantImpl _value, $Res Function(_$ParticipantImpl) _then)
      : super(_value, _then);

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
    return _then(_$ParticipantImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as ParticipantRole,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as ID?,
      xId: freezed == xId
          ? _value.xId
          : xId // ignore: cast_nullable_to_non_nullable
              as String?,
      discordId: freezed == discordId
          ? _value.discordId
          : discordId // ignore: cast_nullable_to_non_nullable
              as String?,
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ParticipantImpl implements _Participant {
  const _$ParticipantImpl(
      {required this.id,
      @JsonKey(name: 'participant_role') required this.role,
      required this.name,
      this.userId,
      this.xId,
      this.discordId,
      this.character});

  factory _$ParticipantImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParticipantImplFromJson(json);

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

  @override
  String toString() {
    return 'Participant(id: $id, role: $role, name: $name, userId: $userId, xId: $xId, discordId: $discordId, character: $character)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParticipantImpl &&
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

  /// Create a copy of Participant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParticipantImplCopyWith<_$ParticipantImpl> get copyWith =>
      __$$ParticipantImplCopyWithImpl<_$ParticipantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParticipantImplToJson(
      this,
    );
  }
}

abstract class _Participant implements Participant {
  const factory _Participant(
      {required final ID id,
      @JsonKey(name: 'participant_role') required final ParticipantRole role,
      required final String name,
      final ID? userId,
      final String? xId,
      final String? discordId,
      final Character? character}) = _$ParticipantImpl;

  factory _Participant.fromJson(Map<String, dynamic> json) =
      _$ParticipantImpl.fromJson;

  @override
  ID get id;
  @override
  @JsonKey(name: 'participant_role')
  ParticipantRole get role;
  @override
  String get name;
  @override
  ID? get userId;
  @override
  String? get xId;
  @override
  String? get discordId;
  @override
  Character? get character;

  /// Create a copy of Participant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParticipantImplCopyWith<_$ParticipantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
