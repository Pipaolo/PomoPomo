// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskEditEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submitted value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submitted value)? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEditEventCopyWith<$Res> {
  factory $TaskEditEventCopyWith(
          TaskEditEvent value, $Res Function(TaskEditEvent) then) =
      _$TaskEditEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TaskEditEventCopyWithImpl<$Res>
    implements $TaskEditEventCopyWith<$Res> {
  _$TaskEditEventCopyWithImpl(this._value, this._then);

  final TaskEditEvent _value;
  // ignore: unused_field
  final $Res Function(TaskEditEvent) _then;
}

/// @nodoc
abstract class _$$_SubmittedCopyWith<$Res> {
  factory _$$_SubmittedCopyWith(
          _$_Submitted value, $Res Function(_$_Submitted) then) =
      __$$_SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubmittedCopyWithImpl<$Res> extends _$TaskEditEventCopyWithImpl<$Res>
    implements _$$_SubmittedCopyWith<$Res> {
  __$$_SubmittedCopyWithImpl(
      _$_Submitted _value, $Res Function(_$_Submitted) _then)
      : super(_value, (v) => _then(v as _$_Submitted));

  @override
  _$_Submitted get _value => super._value as _$_Submitted;
}

/// @nodoc

class _$_Submitted implements _Submitted {
  const _$_Submitted();

  @override
  String toString() {
    return 'TaskEditEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? submitted,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submitted value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Submitted value)? submitted,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements TaskEditEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
mixin _$TaskEditState {
  TaskEditStatus get status => throw _privateConstructorUsedError;
  Task? get initialTask => throw _privateConstructorUsedError;
  FormGroup? get form => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskEditStateCopyWith<TaskEditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEditStateCopyWith<$Res> {
  factory $TaskEditStateCopyWith(
          TaskEditState value, $Res Function(TaskEditState) then) =
      _$TaskEditStateCopyWithImpl<$Res>;
  $Res call({TaskEditStatus status, Task? initialTask, FormGroup? form});

  $TaskCopyWith<$Res>? get initialTask;
}

/// @nodoc
class _$TaskEditStateCopyWithImpl<$Res>
    implements $TaskEditStateCopyWith<$Res> {
  _$TaskEditStateCopyWithImpl(this._value, this._then);

  final TaskEditState _value;
  // ignore: unused_field
  final $Res Function(TaskEditState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? initialTask = freezed,
    Object? form = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskEditStatus,
      initialTask: initialTask == freezed
          ? _value.initialTask
          : initialTask // ignore: cast_nullable_to_non_nullable
              as Task?,
      form: form == freezed
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as FormGroup?,
    ));
  }

  @override
  $TaskCopyWith<$Res>? get initialTask {
    if (_value.initialTask == null) {
      return null;
    }

    return $TaskCopyWith<$Res>(_value.initialTask!, (value) {
      return _then(_value.copyWith(initialTask: value));
    });
  }
}

/// @nodoc
abstract class _$$_TaskEditStateCopyWith<$Res>
    implements $TaskEditStateCopyWith<$Res> {
  factory _$$_TaskEditStateCopyWith(
          _$_TaskEditState value, $Res Function(_$_TaskEditState) then) =
      __$$_TaskEditStateCopyWithImpl<$Res>;
  @override
  $Res call({TaskEditStatus status, Task? initialTask, FormGroup? form});

  @override
  $TaskCopyWith<$Res>? get initialTask;
}

/// @nodoc
class __$$_TaskEditStateCopyWithImpl<$Res>
    extends _$TaskEditStateCopyWithImpl<$Res>
    implements _$$_TaskEditStateCopyWith<$Res> {
  __$$_TaskEditStateCopyWithImpl(
      _$_TaskEditState _value, $Res Function(_$_TaskEditState) _then)
      : super(_value, (v) => _then(v as _$_TaskEditState));

  @override
  _$_TaskEditState get _value => super._value as _$_TaskEditState;

  @override
  $Res call({
    Object? status = freezed,
    Object? initialTask = freezed,
    Object? form = freezed,
  }) {
    return _then(_$_TaskEditState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskEditStatus,
      initialTask: initialTask == freezed
          ? _value.initialTask
          : initialTask // ignore: cast_nullable_to_non_nullable
              as Task?,
      form: form == freezed
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as FormGroup?,
    ));
  }
}

/// @nodoc

class _$_TaskEditState implements _TaskEditState {
  const _$_TaskEditState(
      {this.status = TaskEditStatus.initial, this.initialTask, this.form});

  @override
  @JsonKey()
  final TaskEditStatus status;
  @override
  final Task? initialTask;
  @override
  final FormGroup? form;

  @override
  String toString() {
    return 'TaskEditState(status: $status, initialTask: $initialTask, form: $form)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskEditState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.initialTask, initialTask) &&
            const DeepCollectionEquality().equals(other.form, form));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(initialTask),
      const DeepCollectionEquality().hash(form));

  @JsonKey(ignore: true)
  @override
  _$$_TaskEditStateCopyWith<_$_TaskEditState> get copyWith =>
      __$$_TaskEditStateCopyWithImpl<_$_TaskEditState>(this, _$identity);
}

abstract class _TaskEditState implements TaskEditState {
  const factory _TaskEditState(
      {final TaskEditStatus status,
      final Task? initialTask,
      final FormGroup? form}) = _$_TaskEditState;

  @override
  TaskEditStatus get status => throw _privateConstructorUsedError;
  @override
  Task? get initialTask => throw _privateConstructorUsedError;
  @override
  FormGroup? get form => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TaskEditStateCopyWith<_$_TaskEditState> get copyWith =>
      throw _privateConstructorUsedError;
}
