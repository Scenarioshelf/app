// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NewSession {
  ID get id;
  ID get scenarioId;
  List<NewSchedule> get schedules;
  List<NewParticipant> get participants;
  List<NewMemo> get memos;

  /// Create a copy of NewSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NewSessionCopyWith<NewSession> get copyWith =>
      _$NewSessionCopyWithImpl<NewSession>(this as NewSession, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewSession &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.scenarioId, scenarioId) ||
                other.scenarioId == scenarioId) &&
            const DeepCollectionEquality().equals(other.schedules, schedules) &&
            const DeepCollectionEquality()
                .equals(other.participants, participants) &&
            const DeepCollectionEquality().equals(other.memos, memos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      scenarioId,
      const DeepCollectionEquality().hash(schedules),
      const DeepCollectionEquality().hash(participants),
      const DeepCollectionEquality().hash(memos));

  @override
  String toString() {
    return 'NewSession(id: $id, scenarioId: $scenarioId, schedules: $schedules, participants: $participants, memos: $memos)';
  }
}

/// @nodoc
abstract mixin class $NewSessionCopyWith<$Res> {
  factory $NewSessionCopyWith(
          NewSession value, $Res Function(NewSession) _then) =
      _$NewSessionCopyWithImpl;
  @useResult
  $Res call(
      {ID id,
      ID scenarioId,
      List<NewSchedule> schedules,
      List<NewParticipant> participants,
      List<NewMemo> memos});
}

/// @nodoc
class _$NewSessionCopyWithImpl<$Res> implements $NewSessionCopyWith<$Res> {
  _$NewSessionCopyWithImpl(this._self, this._then);

  final NewSession _self;
  final $Res Function(NewSession) _then;

  /// Create a copy of NewSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? scenarioId = null,
    Object? schedules = null,
    Object? participants = null,
    Object? memos = null,
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
      schedules: null == schedules
          ? _self.schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<NewSchedule>,
      participants: null == participants
          ? _self.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<NewParticipant>,
      memos: null == memos
          ? _self.memos
          : memos // ignore: cast_nullable_to_non_nullable
              as List<NewMemo>,
    ));
  }
}

/// @nodoc

class _NewSessionInserting implements NewSession {
  const _NewSessionInserting(
      {required this.id,
      required this.scenarioId,
      required final List<NewSchedule> schedules,
      required final List<NewParticipant> participants,
      required final List<NewMemo> memos})
      : _schedules = schedules,
        _participants = participants,
        _memos = memos;

  @override
  final ID id;
  @override
  final ID scenarioId;
  final List<NewSchedule> _schedules;
  @override
  List<NewSchedule> get schedules {
    if (_schedules is EqualUnmodifiableListView) return _schedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedules);
  }

  final List<NewParticipant> _participants;
  @override
  List<NewParticipant> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  final List<NewMemo> _memos;
  @override
  List<NewMemo> get memos {
    if (_memos is EqualUnmodifiableListView) return _memos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memos);
  }

  /// Create a copy of NewSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NewSessionInsertingCopyWith<_NewSessionInserting> get copyWith =>
      __$NewSessionInsertingCopyWithImpl<_NewSessionInserting>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewSessionInserting &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.scenarioId, scenarioId) ||
                other.scenarioId == scenarioId) &&
            const DeepCollectionEquality()
                .equals(other._schedules, _schedules) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            const DeepCollectionEquality().equals(other._memos, _memos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      scenarioId,
      const DeepCollectionEquality().hash(_schedules),
      const DeepCollectionEquality().hash(_participants),
      const DeepCollectionEquality().hash(_memos));

  @override
  String toString() {
    return 'NewSession.inserting(id: $id, scenarioId: $scenarioId, schedules: $schedules, participants: $participants, memos: $memos)';
  }
}

/// @nodoc
abstract mixin class _$NewSessionInsertingCopyWith<$Res>
    implements $NewSessionCopyWith<$Res> {
  factory _$NewSessionInsertingCopyWith(_NewSessionInserting value,
          $Res Function(_NewSessionInserting) _then) =
      __$NewSessionInsertingCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ID id,
      ID scenarioId,
      List<NewSchedule> schedules,
      List<NewParticipant> participants,
      List<NewMemo> memos});
}

/// @nodoc
class __$NewSessionInsertingCopyWithImpl<$Res>
    implements _$NewSessionInsertingCopyWith<$Res> {
  __$NewSessionInsertingCopyWithImpl(this._self, this._then);

  final _NewSessionInserting _self;
  final $Res Function(_NewSessionInserting) _then;

  /// Create a copy of NewSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? scenarioId = null,
    Object? schedules = null,
    Object? participants = null,
    Object? memos = null,
  }) {
    return _then(_NewSessionInserting(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      scenarioId: null == scenarioId
          ? _self.scenarioId
          : scenarioId // ignore: cast_nullable_to_non_nullable
              as ID,
      schedules: null == schedules
          ? _self._schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<NewSchedule>,
      participants: null == participants
          ? _self._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<NewParticipant>,
      memos: null == memos
          ? _self._memos
          : memos // ignore: cast_nullable_to_non_nullable
              as List<NewMemo>,
    ));
  }
}

// dart format on
