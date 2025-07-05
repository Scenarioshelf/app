// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Character {
  ID get id;
  String get name;
  bool get isPublic;
  bool get isCustomized;
  int? get number;
  String? get imageUrl;

  /// Create a copy of Character
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CharacterCopyWith<Character> get copyWith =>
      _$CharacterCopyWithImpl<Character>(this as Character, _$identity);

  /// Serializes this Character to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Character &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.isCustomized, isCustomized) ||
                other.isCustomized == isCustomized) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, isPublic, isCustomized, number, imageUrl);

  @override
  String toString() {
    return 'Character(id: $id, name: $name, isPublic: $isPublic, isCustomized: $isCustomized, number: $number, imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class $CharacterCopyWith<$Res> {
  factory $CharacterCopyWith(Character value, $Res Function(Character) _then) =
      _$CharacterCopyWithImpl;
  @useResult
  $Res call(
      {ID id,
      String name,
      bool isPublic,
      bool isCustomized,
      int? number,
      String? imageUrl});
}

/// @nodoc
class _$CharacterCopyWithImpl<$Res> implements $CharacterCopyWith<$Res> {
  _$CharacterCopyWithImpl(this._self, this._then);

  final Character _self;
  final $Res Function(Character) _then;

  /// Create a copy of Character
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isPublic = null,
    Object? isCustomized = null,
    Object? number = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
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
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _Character implements Character {
  const _Character(
      {required this.id,
      required this.name,
      this.isPublic = true,
      this.isCustomized = false,
      this.number,
      this.imageUrl});
  factory _Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);

  @override
  final ID id;
  @override
  final String name;
  @override
  @JsonKey()
  final bool isPublic;
  @override
  @JsonKey()
  final bool isCustomized;
  @override
  final int? number;
  @override
  final String? imageUrl;

  /// Create a copy of Character
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CharacterCopyWith<_Character> get copyWith =>
      __$CharacterCopyWithImpl<_Character>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CharacterToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Character &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.isCustomized, isCustomized) ||
                other.isCustomized == isCustomized) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, isPublic, isCustomized, number, imageUrl);

  @override
  String toString() {
    return 'Character(id: $id, name: $name, isPublic: $isPublic, isCustomized: $isCustomized, number: $number, imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class _$CharacterCopyWith<$Res>
    implements $CharacterCopyWith<$Res> {
  factory _$CharacterCopyWith(
          _Character value, $Res Function(_Character) _then) =
      __$CharacterCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ID id,
      String name,
      bool isPublic,
      bool isCustomized,
      int? number,
      String? imageUrl});
}

/// @nodoc
class __$CharacterCopyWithImpl<$Res> implements _$CharacterCopyWith<$Res> {
  __$CharacterCopyWithImpl(this._self, this._then);

  final _Character _self;
  final $Res Function(_Character) _then;

  /// Create a copy of Character
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isPublic = null,
    Object? isCustomized = null,
    Object? number = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_Character(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
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
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
