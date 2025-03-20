// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_memo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NewMemo {
  ID get id;
  ID get sessionId;
  String get title;
  String get content;
  bool get isPublic;

  /// Create a copy of NewMemo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NewMemoCopyWith<NewMemo> get copyWith =>
      _$NewMemoCopyWithImpl<NewMemo>(this as NewMemo, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewMemo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, sessionId, title, content, isPublic);

  @override
  String toString() {
    return 'NewMemo(id: $id, sessionId: $sessionId, title: $title, content: $content, isPublic: $isPublic)';
  }
}

/// @nodoc
abstract mixin class $NewMemoCopyWith<$Res> {
  factory $NewMemoCopyWith(NewMemo value, $Res Function(NewMemo) _then) =
      _$NewMemoCopyWithImpl;
  @useResult
  $Res call({ID id, ID sessionId, String title, String content, bool isPublic});
}

/// @nodoc
class _$NewMemoCopyWithImpl<$Res> implements $NewMemoCopyWith<$Res> {
  _$NewMemoCopyWithImpl(this._self, this._then);

  final NewMemo _self;
  final $Res Function(NewMemo) _then;

  /// Create a copy of NewMemo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sessionId = null,
    Object? title = null,
    Object? content = null,
    Object? isPublic = null,
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
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: null == isPublic
          ? _self.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _NewMemoInserting implements NewMemo {
  const _NewMemoInserting(
      {required this.id,
      required this.sessionId,
      required this.title,
      required this.content,
      required this.isPublic});

  @override
  final ID id;
  @override
  final ID sessionId;
  @override
  final String title;
  @override
  final String content;
  @override
  final bool isPublic;

  /// Create a copy of NewMemo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NewMemoInsertingCopyWith<_NewMemoInserting> get copyWith =>
      __$NewMemoInsertingCopyWithImpl<_NewMemoInserting>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewMemoInserting &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, sessionId, title, content, isPublic);

  @override
  String toString() {
    return 'NewMemo.inserting(id: $id, sessionId: $sessionId, title: $title, content: $content, isPublic: $isPublic)';
  }
}

/// @nodoc
abstract mixin class _$NewMemoInsertingCopyWith<$Res>
    implements $NewMemoCopyWith<$Res> {
  factory _$NewMemoInsertingCopyWith(
          _NewMemoInserting value, $Res Function(_NewMemoInserting) _then) =
      __$NewMemoInsertingCopyWithImpl;
  @override
  @useResult
  $Res call({ID id, ID sessionId, String title, String content, bool isPublic});
}

/// @nodoc
class __$NewMemoInsertingCopyWithImpl<$Res>
    implements _$NewMemoInsertingCopyWith<$Res> {
  __$NewMemoInsertingCopyWithImpl(this._self, this._then);

  final _NewMemoInserting _self;
  final $Res Function(_NewMemoInserting) _then;

  /// Create a copy of NewMemo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? sessionId = null,
    Object? title = null,
    Object? content = null,
    Object? isPublic = null,
  }) {
    return _then(_NewMemoInserting(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      sessionId: null == sessionId
          ? _self.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as ID,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: null == isPublic
          ? _self.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
