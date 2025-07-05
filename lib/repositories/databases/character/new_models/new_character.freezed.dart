// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NewCharacter {
  ID get id;
  ID get scenarioId;
  String get name;
  bool get isPublic;
  bool get isCustomized;
  int? get number;
  Uint8List? get image;

  /// Create a copy of NewCharacter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NewCharacterCopyWith<NewCharacter> get copyWith =>
      _$NewCharacterCopyWithImpl<NewCharacter>(
          this as NewCharacter, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewCharacter &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.scenarioId, scenarioId) ||
                other.scenarioId == scenarioId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.isCustomized, isCustomized) ||
                other.isCustomized == isCustomized) &&
            (identical(other.number, number) || other.number == number) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, scenarioId, name, isPublic,
      isCustomized, number, const DeepCollectionEquality().hash(image));

  @override
  String toString() {
    return 'NewCharacter(id: $id, scenarioId: $scenarioId, name: $name, isPublic: $isPublic, isCustomized: $isCustomized, number: $number, image: $image)';
  }
}

/// @nodoc
abstract mixin class $NewCharacterCopyWith<$Res> {
  factory $NewCharacterCopyWith(
          NewCharacter value, $Res Function(NewCharacter) _then) =
      _$NewCharacterCopyWithImpl;
  @useResult
  $Res call(
      {ID id,
      ID scenarioId,
      String name,
      bool isPublic,
      bool isCustomized,
      int? number,
      Uint8List? image});
}

/// @nodoc
class _$NewCharacterCopyWithImpl<$Res> implements $NewCharacterCopyWith<$Res> {
  _$NewCharacterCopyWithImpl(this._self, this._then);

  final NewCharacter _self;
  final $Res Function(NewCharacter) _then;

  /// Create a copy of NewCharacter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? scenarioId = null,
    Object? name = null,
    Object? isPublic = null,
    Object? isCustomized = null,
    Object? number = freezed,
    Object? image = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      scenarioId: null == scenarioId
          ? _self.scenarioId
          : scenarioId // ignore: cast_nullable_to_non_nullable
              as ID,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: null == isPublic
          ? _self.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      isCustomized: null == isCustomized
          ? _self.isCustomized
          : isCustomized // ignore: cast_nullable_to_non_nullable
              as bool,
      number: freezed == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _NewCharacter implements NewCharacter {
  const _NewCharacter(
      {required this.id,
      required this.scenarioId,
      required this.name,
      required this.isPublic,
      required this.isCustomized,
      this.number,
      this.image});

  @override
  final ID id;
  @override
  final ID scenarioId;
  @override
  final String name;
  @override
  final bool isPublic;
  @override
  final bool isCustomized;
  @override
  final int? number;
  @override
  final Uint8List? image;

  /// Create a copy of NewCharacter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NewCharacterCopyWith<_NewCharacter> get copyWith =>
      __$NewCharacterCopyWithImpl<_NewCharacter>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewCharacter &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.scenarioId, scenarioId) ||
                other.scenarioId == scenarioId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.isCustomized, isCustomized) ||
                other.isCustomized == isCustomized) &&
            (identical(other.number, number) || other.number == number) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, scenarioId, name, isPublic,
      isCustomized, number, const DeepCollectionEquality().hash(image));

  @override
  String toString() {
    return 'NewCharacter.inserting(id: $id, scenarioId: $scenarioId, name: $name, isPublic: $isPublic, isCustomized: $isCustomized, number: $number, image: $image)';
  }
}

/// @nodoc
abstract mixin class _$NewCharacterCopyWith<$Res>
    implements $NewCharacterCopyWith<$Res> {
  factory _$NewCharacterCopyWith(
          _NewCharacter value, $Res Function(_NewCharacter) _then) =
      __$NewCharacterCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ID id,
      ID scenarioId,
      String name,
      bool isPublic,
      bool isCustomized,
      int? number,
      Uint8List? image});
}

/// @nodoc
class __$NewCharacterCopyWithImpl<$Res>
    implements _$NewCharacterCopyWith<$Res> {
  __$NewCharacterCopyWithImpl(this._self, this._then);

  final _NewCharacter _self;
  final $Res Function(_NewCharacter) _then;

  /// Create a copy of NewCharacter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? scenarioId = null,
    Object? name = null,
    Object? isPublic = null,
    Object? isCustomized = null,
    Object? number = freezed,
    Object? image = freezed,
  }) {
    return _then(_NewCharacter(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      scenarioId: null == scenarioId
          ? _self.scenarioId
          : scenarioId // ignore: cast_nullable_to_non_nullable
              as ID,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: null == isPublic
          ? _self.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      isCustomized: null == isCustomized
          ? _self.isCustomized
          : isCustomized // ignore: cast_nullable_to_non_nullable
              as bool,
      number: freezed == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

// dart format on
