// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() allTasksIncremented,
    required TResult Function() subscriptionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? allTasksIncremented,
    TResult Function()? subscriptionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? allTasksIncremented,
    TResult Function()? subscriptionRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AllTasksIncremented value) allTasksIncremented,
    required TResult Function(_SubscriptionRequested value)
        subscriptionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AllTasksIncremented value)? allTasksIncremented,
    TResult Function(_SubscriptionRequested value)? subscriptionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AllTasksIncremented value)? allTasksIncremented,
    TResult Function(_SubscriptionRequested value)? subscriptionRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListEventCopyWith<$Res> {
  factory $TaskListEventCopyWith(
          TaskListEvent value, $Res Function(TaskListEvent) then) =
      _$TaskListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TaskListEventCopyWithImpl<$Res>
    implements $TaskListEventCopyWith<$Res> {
  _$TaskListEventCopyWithImpl(this._value, this._then);

  final TaskListEvent _value;
  // ignore: unused_field
  final $Res Function(TaskListEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$TaskListEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'TaskListEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() allTasksIncremented,
    required TResult Function() subscriptionRequested,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? allTasksIncremented,
    TResult Function()? subscriptionRequested,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? allTasksIncremented,
    TResult Function()? subscriptionRequested,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AllTasksIncremented value) allTasksIncremented,
    required TResult Function(_SubscriptionRequested value)
        subscriptionRequested,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AllTasksIncremented value)? allTasksIncremented,
    TResult Function(_SubscriptionRequested value)? subscriptionRequested,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AllTasksIncremented value)? allTasksIncremented,
    TResult Function(_SubscriptionRequested value)? subscriptionRequested,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TaskListEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_AllTasksIncrementedCopyWith<$Res> {
  factory _$$_AllTasksIncrementedCopyWith(_$_AllTasksIncremented value,
          $Res Function(_$_AllTasksIncremented) then) =
      __$$_AllTasksIncrementedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AllTasksIncrementedCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res>
    implements _$$_AllTasksIncrementedCopyWith<$Res> {
  __$$_AllTasksIncrementedCopyWithImpl(_$_AllTasksIncremented _value,
      $Res Function(_$_AllTasksIncremented) _then)
      : super(_value, (v) => _then(v as _$_AllTasksIncremented));

  @override
  _$_AllTasksIncremented get _value => super._value as _$_AllTasksIncremented;
}

/// @nodoc

class _$_AllTasksIncremented implements _AllTasksIncremented {
  const _$_AllTasksIncremented();

  @override
  String toString() {
    return 'TaskListEvent.allTasksIncremented()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AllTasksIncremented);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() allTasksIncremented,
    required TResult Function() subscriptionRequested,
  }) {
    return allTasksIncremented();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? allTasksIncremented,
    TResult Function()? subscriptionRequested,
  }) {
    return allTasksIncremented?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? allTasksIncremented,
    TResult Function()? subscriptionRequested,
    required TResult orElse(),
  }) {
    if (allTasksIncremented != null) {
      return allTasksIncremented();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AllTasksIncremented value) allTasksIncremented,
    required TResult Function(_SubscriptionRequested value)
        subscriptionRequested,
  }) {
    return allTasksIncremented(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AllTasksIncremented value)? allTasksIncremented,
    TResult Function(_SubscriptionRequested value)? subscriptionRequested,
  }) {
    return allTasksIncremented?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AllTasksIncremented value)? allTasksIncremented,
    TResult Function(_SubscriptionRequested value)? subscriptionRequested,
    required TResult orElse(),
  }) {
    if (allTasksIncremented != null) {
      return allTasksIncremented(this);
    }
    return orElse();
  }
}

abstract class _AllTasksIncremented implements TaskListEvent {
  const factory _AllTasksIncremented() = _$_AllTasksIncremented;
}

/// @nodoc
abstract class _$$_SubscriptionRequestedCopyWith<$Res> {
  factory _$$_SubscriptionRequestedCopyWith(_$_SubscriptionRequested value,
          $Res Function(_$_SubscriptionRequested) then) =
      __$$_SubscriptionRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubscriptionRequestedCopyWithImpl<$Res>
    extends _$TaskListEventCopyWithImpl<$Res>
    implements _$$_SubscriptionRequestedCopyWith<$Res> {
  __$$_SubscriptionRequestedCopyWithImpl(_$_SubscriptionRequested _value,
      $Res Function(_$_SubscriptionRequested) _then)
      : super(_value, (v) => _then(v as _$_SubscriptionRequested));

  @override
  _$_SubscriptionRequested get _value =>
      super._value as _$_SubscriptionRequested;
}

/// @nodoc

class _$_SubscriptionRequested implements _SubscriptionRequested {
  const _$_SubscriptionRequested();

  @override
  String toString() {
    return 'TaskListEvent.subscriptionRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SubscriptionRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() allTasksIncremented,
    required TResult Function() subscriptionRequested,
  }) {
    return subscriptionRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? allTasksIncremented,
    TResult Function()? subscriptionRequested,
  }) {
    return subscriptionRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? allTasksIncremented,
    TResult Function()? subscriptionRequested,
    required TResult orElse(),
  }) {
    if (subscriptionRequested != null) {
      return subscriptionRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AllTasksIncremented value) allTasksIncremented,
    required TResult Function(_SubscriptionRequested value)
        subscriptionRequested,
  }) {
    return subscriptionRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AllTasksIncremented value)? allTasksIncremented,
    TResult Function(_SubscriptionRequested value)? subscriptionRequested,
  }) {
    return subscriptionRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AllTasksIncremented value)? allTasksIncremented,
    TResult Function(_SubscriptionRequested value)? subscriptionRequested,
    required TResult orElse(),
  }) {
    if (subscriptionRequested != null) {
      return subscriptionRequested(this);
    }
    return orElse();
  }
}

abstract class _SubscriptionRequested implements TaskListEvent {
  const factory _SubscriptionRequested() = _$_SubscriptionRequested;
}

/// @nodoc
mixin _$TaskListState {
  TaskListStatus get status => throw _privateConstructorUsedError;
  List<Task> get tasks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskListStateCopyWith<TaskListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListStateCopyWith<$Res> {
  factory $TaskListStateCopyWith(
          TaskListState value, $Res Function(TaskListState) then) =
      _$TaskListStateCopyWithImpl<$Res>;
  $Res call({TaskListStatus status, List<Task> tasks});
}

/// @nodoc
class _$TaskListStateCopyWithImpl<$Res>
    implements $TaskListStateCopyWith<$Res> {
  _$TaskListStateCopyWithImpl(this._value, this._then);

  final TaskListState _value;
  // ignore: unused_field
  final $Res Function(TaskListState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? tasks = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskListStatus,
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $TaskListStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call({TaskListStatus status, List<Task> tasks});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$TaskListStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? status = freezed,
    Object? tasks = freezed,
  }) {
    return _then(_$_Initial(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskListStatus,
      tasks: tasks == freezed
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.status = TaskListStatus.initial,
      final List<Task> tasks = const <Task>[]})
      : _tasks = tasks;

  @override
  @JsonKey()
  final TaskListStatus status;
  final List<Task> _tasks;
  @override
  @JsonKey()
  List<Task> get tasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TaskListState(status: $status, tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements TaskListState {
  const factory _Initial(
      {final TaskListStatus status, final List<Task> tasks}) = _$_Initial;

  @override
  TaskListStatus get status => throw _privateConstructorUsedError;
  @override
  List<Task> get tasks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
