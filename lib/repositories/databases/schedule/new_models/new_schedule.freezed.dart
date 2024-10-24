// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewSchedule {
  ID get id => throw _privateConstructorUsedError;
  ID get sessionId => throw _privateConstructorUsedError;
  ScheduleType get type => throw _privateConstructorUsedError;
  DateTime get beginningTime => throw _privateConstructorUsedError;
  Duration get playtime => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ID id, ID sessionId, ScheduleType type,
            DateTime beginningTime, Duration playtime)
        inserting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ID id, ID sessionId, ScheduleType type,
            DateTime beginningTime, Duration playtime)?
        inserting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ID id, ID sessionId, ScheduleType type,
            DateTime beginningTime, Duration playtime)?
        inserting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewScheduleInserting value) inserting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewScheduleInserting value)? inserting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewScheduleInserting value)? inserting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of NewSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewScheduleCopyWith<NewSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewScheduleCopyWith<$Res> {
  factory $NewScheduleCopyWith(
          NewSchedule value, $Res Function(NewSchedule) then) =
      _$NewScheduleCopyWithImpl<$Res, NewSchedule>;
  @useResult
  $Res call(
      {ID id,
      ID sessionId,
      ScheduleType type,
      DateTime beginningTime,
      Duration playtime});
}

/// @nodoc
class _$NewScheduleCopyWithImpl<$Res, $Val extends NewSchedule>
    implements $NewScheduleCopyWith<$Res> {
  _$NewScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sessionId = null,
    Object? type = null,
    Object? beginningTime = null,
    Object? playtime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as ID,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ScheduleType,
      beginningTime: null == beginningTime
          ? _value.beginningTime
          : beginningTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      playtime: null == playtime
          ? _value.playtime
          : playtime // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewScheduleInsertingImplCopyWith<$Res>
    implements $NewScheduleCopyWith<$Res> {
  factory _$$NewScheduleInsertingImplCopyWith(_$NewScheduleInsertingImpl value,
          $Res Function(_$NewScheduleInsertingImpl) then) =
      __$$NewScheduleInsertingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ID id,
      ID sessionId,
      ScheduleType type,
      DateTime beginningTime,
      Duration playtime});
}

/// @nodoc
class __$$NewScheduleInsertingImplCopyWithImpl<$Res>
    extends _$NewScheduleCopyWithImpl<$Res, _$NewScheduleInsertingImpl>
    implements _$$NewScheduleInsertingImplCopyWith<$Res> {
  __$$NewScheduleInsertingImplCopyWithImpl(_$NewScheduleInsertingImpl _value,
      $Res Function(_$NewScheduleInsertingImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sessionId = null,
    Object? type = null,
    Object? beginningTime = null,
    Object? playtime = null,
  }) {
    return _then(_$NewScheduleInsertingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as ID,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ScheduleType,
      beginningTime: null == beginningTime
          ? _value.beginningTime
          : beginningTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      playtime: null == playtime
          ? _value.playtime
          : playtime // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$NewScheduleInsertingImpl implements _NewScheduleInserting {
  const _$NewScheduleInsertingImpl(
      {required this.id,
      required this.sessionId,
      required this.type,
      required this.beginningTime,
      required this.playtime});

  @override
  final ID id;
  @override
  final ID sessionId;
  @override
  final ScheduleType type;
  @override
  final DateTime beginningTime;
  @override
  final Duration playtime;

  @override
  String toString() {
    return 'NewSchedule.inserting(id: $id, sessionId: $sessionId, type: $type, beginningTime: $beginningTime, playtime: $playtime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewScheduleInsertingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.beginningTime, beginningTime) ||
                other.beginningTime == beginningTime) &&
            (identical(other.playtime, playtime) ||
                other.playtime == playtime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, sessionId, type, beginningTime, playtime);

  /// Create a copy of NewSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewScheduleInsertingImplCopyWith<_$NewScheduleInsertingImpl>
      get copyWith =>
          __$$NewScheduleInsertingImplCopyWithImpl<_$NewScheduleInsertingImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ID id, ID sessionId, ScheduleType type,
            DateTime beginningTime, Duration playtime)
        inserting,
  }) {
    return inserting(id, sessionId, type, beginningTime, playtime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ID id, ID sessionId, ScheduleType type,
            DateTime beginningTime, Duration playtime)?
        inserting,
  }) {
    return inserting?.call(id, sessionId, type, beginningTime, playtime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ID id, ID sessionId, ScheduleType type,
            DateTime beginningTime, Duration playtime)?
        inserting,
    required TResult orElse(),
  }) {
    if (inserting != null) {
      return inserting(id, sessionId, type, beginningTime, playtime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewScheduleInserting value) inserting,
  }) {
    return inserting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewScheduleInserting value)? inserting,
  }) {
    return inserting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewScheduleInserting value)? inserting,
    required TResult orElse(),
  }) {
    if (inserting != null) {
      return inserting(this);
    }
    return orElse();
  }
}

abstract class _NewScheduleInserting implements NewSchedule {
  const factory _NewScheduleInserting(
      {required final ID id,
      required final ID sessionId,
      required final ScheduleType type,
      required final DateTime beginningTime,
      required final Duration playtime}) = _$NewScheduleInsertingImpl;

  @override
  ID get id;
  @override
  ID get sessionId;
  @override
  ScheduleType get type;
  @override
  DateTime get beginningTime;
  @override
  Duration get playtime;

  /// Create a copy of NewSchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewScheduleInsertingImplCopyWith<_$NewScheduleInsertingImpl>
      get copyWith => throw _privateConstructorUsedError;
}
