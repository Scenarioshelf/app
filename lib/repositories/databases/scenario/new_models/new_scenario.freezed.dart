// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_scenario.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NewScenario {
  ID get id;
  TRPGSystem get system;
  String get title;
  List<NewCharacter> get characters;
  String? get kana;
  Uint8List? get keyVisual;
  String? get storeUrl;
  String? get author;

  /// Create a copy of NewScenario
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NewScenarioCopyWith<NewScenario> get copyWith =>
      _$NewScenarioCopyWithImpl<NewScenario>(this as NewScenario, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewScenario &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.system, system) || other.system == system) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other.characters, characters) &&
            (identical(other.kana, kana) || other.kana == kana) &&
            const DeepCollectionEquality().equals(other.keyVisual, keyVisual) &&
            (identical(other.storeUrl, storeUrl) ||
                other.storeUrl == storeUrl) &&
            (identical(other.author, author) || other.author == author));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      system,
      title,
      const DeepCollectionEquality().hash(characters),
      kana,
      const DeepCollectionEquality().hash(keyVisual),
      storeUrl,
      author);

  @override
  String toString() {
    return 'NewScenario(id: $id, system: $system, title: $title, characters: $characters, kana: $kana, keyVisual: $keyVisual, storeUrl: $storeUrl, author: $author)';
  }
}

/// @nodoc
abstract mixin class $NewScenarioCopyWith<$Res> {
  factory $NewScenarioCopyWith(
          NewScenario value, $Res Function(NewScenario) _then) =
      _$NewScenarioCopyWithImpl;
  @useResult
  $Res call(
      {ID id,
      TRPGSystem system,
      String title,
      List<NewCharacter> characters,
      String? kana,
      Uint8List? keyVisual,
      String? storeUrl,
      String? author});
}

/// @nodoc
class _$NewScenarioCopyWithImpl<$Res> implements $NewScenarioCopyWith<$Res> {
  _$NewScenarioCopyWithImpl(this._self, this._then);

  final NewScenario _self;
  final $Res Function(NewScenario) _then;

  /// Create a copy of NewScenario
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? system = null,
    Object? title = null,
    Object? characters = null,
    Object? kana = freezed,
    Object? keyVisual = freezed,
    Object? storeUrl = freezed,
    Object? author = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      system: null == system
          ? _self.system
          : system // ignore: cast_nullable_to_non_nullable
              as TRPGSystem,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      characters: null == characters
          ? _self.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<NewCharacter>,
      kana: freezed == kana
          ? _self.kana
          : kana // ignore: cast_nullable_to_non_nullable
              as String?,
      keyVisual: freezed == keyVisual
          ? _self.keyVisual
          : keyVisual // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      storeUrl: freezed == storeUrl
          ? _self.storeUrl
          : storeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _self.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _NewScenario implements NewScenario {
  const _NewScenario(
      {required this.id,
      required this.system,
      required this.title,
      required final List<NewCharacter> characters,
      this.kana,
      this.keyVisual,
      this.storeUrl,
      this.author})
      : _characters = characters;

  @override
  final ID id;
  @override
  final TRPGSystem system;
  @override
  final String title;
  final List<NewCharacter> _characters;
  @override
  List<NewCharacter> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  final String? kana;
  @override
  final Uint8List? keyVisual;
  @override
  final String? storeUrl;
  @override
  final String? author;

  /// Create a copy of NewScenario
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NewScenarioCopyWith<_NewScenario> get copyWith =>
      __$NewScenarioCopyWithImpl<_NewScenario>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewScenario &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.system, system) || other.system == system) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.kana, kana) || other.kana == kana) &&
            const DeepCollectionEquality().equals(other.keyVisual, keyVisual) &&
            (identical(other.storeUrl, storeUrl) ||
                other.storeUrl == storeUrl) &&
            (identical(other.author, author) || other.author == author));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      system,
      title,
      const DeepCollectionEquality().hash(_characters),
      kana,
      const DeepCollectionEquality().hash(keyVisual),
      storeUrl,
      author);

  @override
  String toString() {
    return 'NewScenario.inserting(id: $id, system: $system, title: $title, characters: $characters, kana: $kana, keyVisual: $keyVisual, storeUrl: $storeUrl, author: $author)';
  }
}

/// @nodoc
abstract mixin class _$NewScenarioCopyWith<$Res>
    implements $NewScenarioCopyWith<$Res> {
  factory _$NewScenarioCopyWith(
          _NewScenario value, $Res Function(_NewScenario) _then) =
      __$NewScenarioCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ID id,
      TRPGSystem system,
      String title,
      List<NewCharacter> characters,
      String? kana,
      Uint8List? keyVisual,
      String? storeUrl,
      String? author});
}

/// @nodoc
class __$NewScenarioCopyWithImpl<$Res> implements _$NewScenarioCopyWith<$Res> {
  __$NewScenarioCopyWithImpl(this._self, this._then);

  final _NewScenario _self;
  final $Res Function(_NewScenario) _then;

  /// Create a copy of NewScenario
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? system = null,
    Object? title = null,
    Object? characters = null,
    Object? kana = freezed,
    Object? keyVisual = freezed,
    Object? storeUrl = freezed,
    Object? author = freezed,
  }) {
    return _then(_NewScenario(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      system: null == system
          ? _self.system
          : system // ignore: cast_nullable_to_non_nullable
              as TRPGSystem,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      characters: null == characters
          ? _self._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<NewCharacter>,
      kana: freezed == kana
          ? _self.kana
          : kana // ignore: cast_nullable_to_non_nullable
              as String?,
      keyVisual: freezed == keyVisual
          ? _self.keyVisual
          : keyVisual // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      storeUrl: freezed == storeUrl
          ? _self.storeUrl
          : storeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _self.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
