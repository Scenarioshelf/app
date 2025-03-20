// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Session {
  ID get id;
  Scenario get scenario;
  ID get createdBy;
  DateTime get createdAt;
  DateTime get updatedAt;
  List<Schedule> get schedules;
  List<Participant> get participants;
  List<Memo> get memos;

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SessionCopyWith<Session> get copyWith =>
      _$SessionCopyWithImpl<Session>(this as Session, _$identity);

  /// Serializes this Session to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Session &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.scenario, scenario) ||
                other.scenario == scenario) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.schedules, schedules) &&
            const DeepCollectionEquality()
                .equals(other.participants, participants) &&
            const DeepCollectionEquality().equals(other.memos, memos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      scenario,
      createdBy,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(schedules),
      const DeepCollectionEquality().hash(participants),
      const DeepCollectionEquality().hash(memos));

  @override
  String toString() {
    return 'Session(id: $id, scenario: $scenario, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt, schedules: $schedules, participants: $participants, memos: $memos)';
  }
}

/// @nodoc
abstract mixin class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) _then) =
      _$SessionCopyWithImpl;
  @useResult
  $Res call(
      {ID id,
      Scenario scenario,
      ID createdBy,
      DateTime createdAt,
      DateTime updatedAt,
      List<Schedule> schedules,
      List<Participant> participants,
      List<Memo> memos});

  $ScenarioCopyWith<$Res> get scenario;
}

/// @nodoc
class _$SessionCopyWithImpl<$Res> implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._self, this._then);

  final Session _self;
  final $Res Function(Session) _then;

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? scenario = null,
    Object? createdBy = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? schedules = null,
    Object? participants = null,
    Object? memos = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      scenario: null == scenario
          ? _self.scenario
          : scenario // ignore: cast_nullable_to_non_nullable
              as Scenario,
      createdBy: null == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as ID,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      schedules: null == schedules
          ? _self.schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<Schedule>,
      participants: null == participants
          ? _self.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<Participant>,
      memos: null == memos
          ? _self.memos
          : memos // ignore: cast_nullable_to_non_nullable
              as List<Memo>,
    ));
  }

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScenarioCopyWith<$Res> get scenario {
    return $ScenarioCopyWith<$Res>(_self.scenario, (value) {
      return _then(_self.copyWith(scenario: value));
    });
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _Session extends Session {
  const _Session(
      {required this.id,
      required this.scenario,
      required this.createdBy,
      required this.createdAt,
      required this.updatedAt,
      final List<Schedule> schedules = const [],
      final List<Participant> participants = const [],
      final List<Memo> memos = const []})
      : _schedules = schedules,
        _participants = participants,
        _memos = memos,
        super._();
  factory _Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);

  @override
  final ID id;
  @override
  final Scenario scenario;
  @override
  final ID createdBy;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  final List<Schedule> _schedules;
  @override
  @JsonKey()
  List<Schedule> get schedules {
    if (_schedules is EqualUnmodifiableListView) return _schedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedules);
  }

  final List<Participant> _participants;
  @override
  @JsonKey()
  List<Participant> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  final List<Memo> _memos;
  @override
  @JsonKey()
  List<Memo> get memos {
    if (_memos is EqualUnmodifiableListView) return _memos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memos);
  }

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SessionCopyWith<_Session> get copyWith =>
      __$SessionCopyWithImpl<_Session>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SessionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Session &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.scenario, scenario) ||
                other.scenario == scenario) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._schedules, _schedules) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            const DeepCollectionEquality().equals(other._memos, _memos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      scenario,
      createdBy,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_schedules),
      const DeepCollectionEquality().hash(_participants),
      const DeepCollectionEquality().hash(_memos));

  @override
  String toString() {
    return 'Session(id: $id, scenario: $scenario, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt, schedules: $schedules, participants: $participants, memos: $memos)';
  }
}

/// @nodoc
abstract mixin class _$SessionCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$SessionCopyWith(_Session value, $Res Function(_Session) _then) =
      __$SessionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ID id,
      Scenario scenario,
      ID createdBy,
      DateTime createdAt,
      DateTime updatedAt,
      List<Schedule> schedules,
      List<Participant> participants,
      List<Memo> memos});

  @override
  $ScenarioCopyWith<$Res> get scenario;
}

/// @nodoc
class __$SessionCopyWithImpl<$Res> implements _$SessionCopyWith<$Res> {
  __$SessionCopyWithImpl(this._self, this._then);

  final _Session _self;
  final $Res Function(_Session) _then;

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? scenario = null,
    Object? createdBy = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? schedules = null,
    Object? participants = null,
    Object? memos = null,
  }) {
    return _then(_Session(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as ID,
      scenario: null == scenario
          ? _self.scenario
          : scenario // ignore: cast_nullable_to_non_nullable
              as Scenario,
      createdBy: null == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as ID,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      schedules: null == schedules
          ? _self._schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<Schedule>,
      participants: null == participants
          ? _self._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<Participant>,
      memos: null == memos
          ? _self._memos
          : memos // ignore: cast_nullable_to_non_nullable
              as List<Memo>,
    ));
  }

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScenarioCopyWith<$Res> get scenario {
    return $ScenarioCopyWith<$Res>(_self.scenario, (value) {
      return _then(_self.copyWith(scenario: value));
    });
  }
}

// dart format on
