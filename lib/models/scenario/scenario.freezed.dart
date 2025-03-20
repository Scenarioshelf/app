// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scenario.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Scenario {
  ID get id;
  @JsonKey(name: 'trpg_system')
  TRPGSystem get system;
  String get title;
  List<Character> get characters;
  String? get kana;
  String? get keyVisualUrl;
  String? get storeUrl;
  String? get author;

  /// Create a copy of Scenario
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ScenarioCopyWith<Scenario> get copyWith =>
      _$ScenarioCopyWithImpl<Scenario>(this as Scenario, _$identity);

  /// Serializes this Scenario to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Scenario &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.system, system) || other.system == system) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other.characters, characters) &&
            (identical(other.kana, kana) || other.kana == kana) &&
            (identical(other.keyVisualUrl, keyVisualUrl) ||
                other.keyVisualUrl == keyVisualUrl) &&
            (identical(other.storeUrl, storeUrl) ||
                other.storeUrl == storeUrl) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      system,
      title,
      const DeepCollectionEquality().hash(characters),
      kana,
      keyVisualUrl,
      storeUrl,
      author);

  @override
  String toString() {
    return 'Scenario(id: $id, system: $system, title: $title, characters: $characters, kana: $kana, keyVisualUrl: $keyVisualUrl, storeUrl: $storeUrl, author: $author)';
  }
}

/// @nodoc
abstract mixin class $ScenarioCopyWith<$Res> {
  factory $ScenarioCopyWith(Scenario value, $Res Function(Scenario) _then) =
      _$ScenarioCopyWithImpl;
  @useResult
  $Res call(
      {ID id,
      @JsonKey(name: 'trpg_system') TRPGSystem system,
      String title,
      List<Character> characters,
      String? kana,
      String? keyVisualUrl,
      String? storeUrl,
      String? author});
}

/// @nodoc
class _$ScenarioCopyWithImpl<$Res> implements $ScenarioCopyWith<$Res> {
  _$ScenarioCopyWithImpl(this._self, this._then);

  final Scenario _self;
  final $Res Function(Scenario) _then;

  /// Create a copy of Scenario
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? system = null,
    Object? title = null,
    Object? characters = null,
    Object? kana = freezed,
    Object? keyVisualUrl = freezed,
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
              as List<Character>,
      kana: freezed == kana
          ? _self.kana
          : kana // ignore: cast_nullable_to_non_nullable
              as String?,
      keyVisualUrl: freezed == keyVisualUrl
          ? _self.keyVisualUrl
          : keyVisualUrl // ignore: cast_nullable_to_non_nullable
              as String?,
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

@JsonSerializable(fieldRename: FieldRename.snake)
class _Scenario extends Scenario {
  _Scenario(
      {required this.id,
      @JsonKey(name: 'trpg_system') required this.system,
      required this.title,
      final List<Character> characters = const [],
      this.kana,
      this.keyVisualUrl,
      this.storeUrl,
      this.author})
      : assert(
            kana == null ||
                kana == '' ||
                RegExp(r'^[0-9a-zA-Zァ-ンヴー ]+$').hasMatch(kana!),
            'フリガナに全角カタカナ以外の文字が含まれています'),
        _characters = characters,
        super._();
  factory _Scenario.fromJson(Map<String, dynamic> json) =>
      _$ScenarioFromJson(json);

  @override
  final ID id;
  @override
  @JsonKey(name: 'trpg_system')
  final TRPGSystem system;
  @override
  final String title;
  final List<Character> _characters;
  @override
  @JsonKey()
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  final String? kana;
  @override
  final String? keyVisualUrl;
  @override
  final String? storeUrl;
  @override
  final String? author;

  /// Create a copy of Scenario
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ScenarioCopyWith<_Scenario> get copyWith =>
      __$ScenarioCopyWithImpl<_Scenario>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ScenarioToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Scenario &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.system, system) || other.system == system) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.kana, kana) || other.kana == kana) &&
            (identical(other.keyVisualUrl, keyVisualUrl) ||
                other.keyVisualUrl == keyVisualUrl) &&
            (identical(other.storeUrl, storeUrl) ||
                other.storeUrl == storeUrl) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      system,
      title,
      const DeepCollectionEquality().hash(_characters),
      kana,
      keyVisualUrl,
      storeUrl,
      author);

  @override
  String toString() {
    return 'Scenario(id: $id, system: $system, title: $title, characters: $characters, kana: $kana, keyVisualUrl: $keyVisualUrl, storeUrl: $storeUrl, author: $author)';
  }
}

/// @nodoc
abstract mixin class _$ScenarioCopyWith<$Res>
    implements $ScenarioCopyWith<$Res> {
  factory _$ScenarioCopyWith(_Scenario value, $Res Function(_Scenario) _then) =
      __$ScenarioCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ID id,
      @JsonKey(name: 'trpg_system') TRPGSystem system,
      String title,
      List<Character> characters,
      String? kana,
      String? keyVisualUrl,
      String? storeUrl,
      String? author});
}

/// @nodoc
class __$ScenarioCopyWithImpl<$Res> implements _$ScenarioCopyWith<$Res> {
  __$ScenarioCopyWithImpl(this._self, this._then);

  final _Scenario _self;
  final $Res Function(_Scenario) _then;

  /// Create a copy of Scenario
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? system = null,
    Object? title = null,
    Object? characters = null,
    Object? kana = freezed,
    Object? keyVisualUrl = freezed,
    Object? storeUrl = freezed,
    Object? author = freezed,
  }) {
    return _then(_Scenario(
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
              as List<Character>,
      kana: freezed == kana
          ? _self.kana
          : kana // ignore: cast_nullable_to_non_nullable
              as String?,
      keyVisualUrl: freezed == keyVisualUrl
          ? _self.keyVisualUrl
          : keyVisualUrl // ignore: cast_nullable_to_non_nullable
              as String?,
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
