// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NewSchedule {
  ID get id;
  ID get sessionId;
  ScheduleType get type;
  DateTime get beginningTime;
  Duration get playtime;

  /// Create a copy of NewSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NewScheduleCopyWith<NewSchedule> get copyWith =>
      _$NewScheduleCopyWithImpl<NewSchedule>(this as NewSchedule, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewSchedule &&
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

  @override
  String toString() {
    return 'NewSchedule(id: $id, sessionId: $sessionId, type: $type, beginningTime: $beginningTime, playtime: $playtime)';
  }
}

/// @nodoc
abstract mixin class $NewScheduleCopyWith<$Res> {
  factory $NewScheduleCopyWith(
          NewSchedule value, $Res Function(NewSchedule) _then) =
      _$NewScheduleCopyWithImpl;
  @useResult
  $Res call(
      {ID id,
      ID sessionId,
      ScheduleType type,
      DateTime beginningTime,
      Duration playtime});
}

/// @nodoc
class _$NewScheduleCopyWithImpl<$Res> implements $NewScheduleCopyWith<$Res> {
  _$NewScheduleCopyWithImpl(this._self, this._then);

  final NewSchedule _self;
  final $Res Function(NewSchedule) _then;

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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      sessionId: null == sessionId
          ? _self.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as ID,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as ScheduleType,
      beginningTime: null == beginningTime
          ? _self.beginningTime
          : beginningTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      playtime: null == playtime
          ? _self.playtime
          : playtime // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _NewScheduleInserting implements NewSchedule {
  const _NewScheduleInserting(
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

  /// Create a copy of NewSchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NewScheduleInsertingCopyWith<_NewScheduleInserting> get copyWith =>
      __$NewScheduleInsertingCopyWithImpl<_NewScheduleInserting>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewScheduleInserting &&
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

  @override
  String toString() {
    return 'NewSchedule.inserting(id: $id, sessionId: $sessionId, type: $type, beginningTime: $beginningTime, playtime: $playtime)';
  }
}

/// @nodoc
abstract mixin class _$NewScheduleInsertingCopyWith<$Res>
    implements $NewScheduleCopyWith<$Res> {
  factory _$NewScheduleInsertingCopyWith(_NewScheduleInserting value,
          $Res Function(_NewScheduleInserting) _then) =
      __$NewScheduleInsertingCopyWithImpl;
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
class __$NewScheduleInsertingCopyWithImpl<$Res>
    implements _$NewScheduleInsertingCopyWith<$Res> {
  __$NewScheduleInsertingCopyWithImpl(this._self, this._then);

  final _NewScheduleInserting _self;
  final $Res Function(_NewScheduleInserting) _then;

  /// Create a copy of NewSchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? sessionId = null,
    Object? type = null,
    Object? beginningTime = null,
    Object? playtime = null,
  }) {
    return _then(_NewScheduleInserting(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      sessionId: null == sessionId
          ? _self.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as ID,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as ScheduleType,
      beginningTime: null == beginningTime
          ? _self.beginningTime
          : beginningTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      playtime: null == playtime
          ? _self.playtime
          : playtime // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

// dart format on
