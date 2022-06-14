// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pomodoro_timer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PomodoroTimerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() paused,
    required TResult Function() breakSkipped,
    required TResult Function() resetRequested,
    required TResult Function(Duration elapsedDuration) elapsedDurationUpdated,
    required TResult Function(
            double? pomodoroCountBeforeLongBreak,
            double? pomodoroDurationInMinutes,
            double? shortBreakDurationInMinutes,
            double? longBreakDurationInMinutes)
        configUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
    TResult Function(
            double? pomodoroCountBeforeLongBreak,
            double? pomodoroDurationInMinutes,
            double? shortBreakDurationInMinutes,
            double? longBreakDurationInMinutes)?
        configUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
    TResult Function(
            double? pomodoroCountBeforeLongBreak,
            double? pomodoroDurationInMinutes,
            double? shortBreakDurationInMinutes,
            double? longBreakDurationInMinutes)?
        configUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Paused value) paused,
    required TResult Function(_BreakSkipped value) breakSkipped,
    required TResult Function(_ResetRequested value) resetRequested,
    required TResult Function(_ElapsedDurationUpdated value)
        elapsedDurationUpdated,
    required TResult Function(_ConfigUpdated value) configUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
    TResult Function(_ConfigUpdated value)? configUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
    TResult Function(_ConfigUpdated value)? configUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PomodoroTimerEventCopyWith<$Res> {
  factory $PomodoroTimerEventCopyWith(
          PomodoroTimerEvent value, $Res Function(PomodoroTimerEvent) then) =
      _$PomodoroTimerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PomodoroTimerEventCopyWithImpl<$Res>
    implements $PomodoroTimerEventCopyWith<$Res> {
  _$PomodoroTimerEventCopyWithImpl(this._value, this._then);

  final PomodoroTimerEvent _value;
  // ignore: unused_field
  final $Res Function(PomodoroTimerEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$PomodoroTimerEventCopyWithImpl<$Res>
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
    return 'PomodoroTimerEvent.started()';
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
    required TResult Function() paused,
    required TResult Function() breakSkipped,
    required TResult Function() resetRequested,
    required TResult Function(Duration elapsedDuration) elapsedDurationUpdated,
    required TResult Function(
            double? pomodoroCountBeforeLongBreak,
            double? pomodoroDurationInMinutes,
            double? shortBreakDurationInMinutes,
            double? longBreakDurationInMinutes)
        configUpdated,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
    TResult Function(
            double? pomodoroCountBeforeLongBreak,
            double? pomodoroDurationInMinutes,
            double? shortBreakDurationInMinutes,
            double? longBreakDurationInMinutes)?
        configUpdated,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
    TResult Function(
            double? pomodoroCountBeforeLongBreak,
            double? pomodoroDurationInMinutes,
            double? shortBreakDurationInMinutes,
            double? longBreakDurationInMinutes)?
        configUpdated,
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
    required TResult Function(_Paused value) paused,
    required TResult Function(_BreakSkipped value) breakSkipped,
    required TResult Function(_ResetRequested value) resetRequested,
    required TResult Function(_ElapsedDurationUpdated value)
        elapsedDurationUpdated,
    required TResult Function(_ConfigUpdated value) configUpdated,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
    TResult Function(_ConfigUpdated value)? configUpdated,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
    TResult Function(_ConfigUpdated value)? configUpdated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PomodoroTimerEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_PausedCopyWith<$Res> {
  factory _$$_PausedCopyWith(_$_Paused value, $Res Function(_$_Paused) then) =
      __$$_PausedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PausedCopyWithImpl<$Res>
    extends _$PomodoroTimerEventCopyWithImpl<$Res>
    implements _$$_PausedCopyWith<$Res> {
  __$$_PausedCopyWithImpl(_$_Paused _value, $Res Function(_$_Paused) _then)
      : super(_value, (v) => _then(v as _$_Paused));

  @override
  _$_Paused get _value => super._value as _$_Paused;
}

/// @nodoc

class _$_Paused implements _Paused {
  const _$_Paused();

  @override
  String toString() {
    return 'PomodoroTimerEvent.paused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Paused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() paused,
    required TResult Function() breakSkipped,
    required TResult Function() resetRequested,
    required TResult Function(Duration elapsedDuration) elapsedDurationUpdated,
    required TResult Function(
            double? pomodoroCountBeforeLongBreak,
            double? pomodoroDurationInMinutes,
            double? shortBreakDurationInMinutes,
            double? longBreakDurationInMinutes)
        configUpdated,
  }) {
    return paused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
    TResult Function(
            double? pomodoroCountBeforeLongBreak,
            double? pomodoroDurationInMinutes,
            double? shortBreakDurationInMinutes,
            double? longBreakDurationInMinutes)?
        configUpdated,
  }) {
    return paused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
    TResult Function(
            double? pomodoroCountBeforeLongBreak,
            double? pomodoroDurationInMinutes,
            double? shortBreakDurationInMinutes,
            double? longBreakDurationInMinutes)?
        configUpdated,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Paused value) paused,
    required TResult Function(_BreakSkipped value) breakSkipped,
    required TResult Function(_ResetRequested value) resetRequested,
    required TResult Function(_ElapsedDurationUpdated value)
        elapsedDurationUpdated,
    required TResult Function(_ConfigUpdated value) configUpdated,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
    TResult Function(_ConfigUpdated value)? configUpdated,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
    TResult Function(_ConfigUpdated value)? configUpdated,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class _Paused implements PomodoroTimerEvent {
  const factory _Paused() = _$_Paused;
}

/// @nodoc
abstract class _$$_BreakSkippedCopyWith<$Res> {
  factory _$$_BreakSkippedCopyWith(
          _$_BreakSkipped value, $Res Function(_$_BreakSkipped) then) =
      __$$_BreakSkippedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BreakSkippedCopyWithImpl<$Res>
    extends _$PomodoroTimerEventCopyWithImpl<$Res>
    implements _$$_BreakSkippedCopyWith<$Res> {
  __$$_BreakSkippedCopyWithImpl(
      _$_BreakSkipped _value, $Res Function(_$_BreakSkipped) _then)
      : super(_value, (v) => _then(v as _$_BreakSkipped));

  @override
  _$_BreakSkipped get _value => super._value as _$_BreakSkipped;
}

/// @nodoc

class _$_BreakSkipped implements _BreakSkipped {
  const _$_BreakSkipped();

  @override
  String toString() {
    return 'PomodoroTimerEvent.breakSkipped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BreakSkipped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() paused,
    required TResult Function() breakSkipped,
    required TResult Function() resetRequested,
    required TResult Function(Duration elapsedDuration) elapsedDurationUpdated,
    required TResult Function(
            double? pomodoroCountBeforeLongBreak,
            double? pomodoroDurationInMinutes,
            double? shortBreakDurationInMinutes,
            double? longBreakDurationInMinutes)
        configUpdated,
  }) {
    return breakSkipped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
    TResult Function(
            double? pomodoroCountBeforeLongBreak,
            double? pomodoroDurationInMinutes,
            double? shortBreakDurationInMinutes,
            double? longBreakDurationInMinutes)?
        configUpdated,
  }) {
    return breakSkipped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
    TResult Function(
            double? pomodoroCountBeforeLongBreak,
            double? pomodoroDurationInMinutes,
            double? shortBreakDurationInMinutes,
            double? longBreakDurationInMinutes)?
        configUpdated,
    required TResult orElse(),
  }) {
    if (breakSkipped != null) {
      return breakSkipped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Paused value) paused,
    required TResult Function(_BreakSkipped value) breakSkipped,
    required TResult Function(_ResetRequested value) resetRequested,
    required TResult Function(_ElapsedDurationUpdated value)
        elapsedDurationUpdated,
    required TResult Function(_ConfigUpdated value) configUpdated,
  }) {
    return breakSkipped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
    TResult Function(_ConfigUpdated value)? configUpdated,
  }) {
    return breakSkipped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
    TResult Function(_ConfigUpdated value)? configUpdated,
    required TResult orElse(),
  }) {
    if (breakSkipped != null) {
      return breakSkipped(this);
    }
    return orElse();
  }
}

abstract class _BreakSkipped implements PomodoroTimerEvent {
  const factory _BreakSkipped() = _$_BreakSkipped;
}

/// @nodoc
abstract class _$$_ResetRequestedCopyWith<$Res> {
  factory _$$_ResetRequestedCopyWith(
          _$_ResetRequested value, $Res Function(_$_ResetRequested) then) =
      __$$_ResetRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetRequestedCopyWithImpl<$Res>
    extends _$PomodoroTimerEventCopyWithImpl<$Res>
    implements _$$_ResetRequestedCopyWith<$Res> {
  __$$_ResetRequestedCopyWithImpl(
      _$_ResetRequested _value, $Res Function(_$_ResetRequested) _then)
      : super(_value, (v) => _then(v as _$_ResetRequested));

  @override
  _$_ResetRequested get _value => super._value as _$_ResetRequested;
}

/// @nodoc

class _$_ResetRequested implements _ResetRequested {
  const _$_ResetRequested();

  @override
  String toString() {
    return 'PomodoroTimerEvent.resetRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResetRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() paused,
    required TResult Function() breakSkipped,
    required TResult Function() resetRequested,
    required TResult Function(Duration elapsedDuration) elapsedDurationUpdated,
    required TResult Function(
            double? pomodoroCountBeforeLongBreak,
            double? pomodoroDurationInMinutes,
            double? shortBreakDurationInMinutes,
            double? longBreakDurationInMinutes)
        configUpdated,
  }) {
    return resetRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
    TResult Function(
            double? pomodoroCountBeforeLongBreak,
            double? pomodoroDurationInMinutes,
            double? shortBreakDurationInMinutes,
            double? longBreakDurationInMinutes)?
        configUpdated,
  }) {
    return resetRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
    TResult Function(
            double? pomodoroCountBeforeLongBreak,
            double? pomodoroDurationInMinutes,
            double? shortBreakDurationInMinutes,
            double? longBreakDurationInMinutes)?
        configUpdated,
    required TResult orElse(),
  }) {
    if (resetRequested != null) {
      return resetRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Paused value) paused,
    required TResult Function(_BreakSkipped value) breakSkipped,
    required TResult Function(_ResetRequested value) resetRequested,
    required TResult Function(_ElapsedDurationUpdated value)
        elapsedDurationUpdated,
    required TResult Function(_ConfigUpdated value) configUpdated,
  }) {
    return resetRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
    TResult Function(_ConfigUpdated value)? configUpdated,
  }) {
    return resetRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
    TResult Function(_ConfigUpdated value)? configUpdated,
    required TResult orElse(),
  }) {
    if (resetRequested != null) {
      return resetRequested(this);
    }
    return orElse();
  }
}

abstract class _ResetRequested implements PomodoroTimerEvent {
  const factory _ResetRequested() = _$_ResetRequested;
}

/// @nodoc
abstract class _$$_ElapsedDurationUpdatedCopyWith<$Res> {
  factory _$$_ElapsedDurationUpdatedCopyWith(_$_ElapsedDurationUpdated value,
          $Res Function(_$_ElapsedDurationUpdated) then) =
      __$$_ElapsedDurationUpdatedCopyWithImpl<$Res>;
  $Res call({Duration elapsedDuration});
}

/// @nodoc
class __$$_ElapsedDurationUpdatedCopyWithImpl<$Res>
    extends _$PomodoroTimerEventCopyWithImpl<$Res>
    implements _$$_ElapsedDurationUpdatedCopyWith<$Res> {
  __$$_ElapsedDurationUpdatedCopyWithImpl(_$_ElapsedDurationUpdated _value,
      $Res Function(_$_ElapsedDurationUpdated) _then)
      : super(_value, (v) => _then(v as _$_ElapsedDurationUpdated));

  @override
  _$_ElapsedDurationUpdated get _value =>
      super._value as _$_ElapsedDurationUpdated;

  @override
  $Res call({
    Object? elapsedDuration = freezed,
  }) {
    return _then(_$_ElapsedDurationUpdated(
      elapsedDuration == freezed
          ? _value.elapsedDuration
          : elapsedDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_ElapsedDurationUpdated implements _ElapsedDurationUpdated {
  const _$_ElapsedDurationUpdated(this.elapsedDuration);

  @override
  final Duration elapsedDuration;

  @override
  String toString() {
    return 'PomodoroTimerEvent.elapsedDurationUpdated(elapsedDuration: $elapsedDuration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElapsedDurationUpdated &&
            const DeepCollectionEquality()
                .equals(other.elapsedDuration, elapsedDuration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(elapsedDuration));

  @JsonKey(ignore: true)
  @override
  _$$_ElapsedDurationUpdatedCopyWith<_$_ElapsedDurationUpdated> get copyWith =>
      __$$_ElapsedDurationUpdatedCopyWithImpl<_$_ElapsedDurationUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() paused,
    required TResult Function() breakSkipped,
    required TResult Function() resetRequested,
    required TResult Function(Duration elapsedDuration) elapsedDurationUpdated,
    required TResult Function(
            double? pomodoroCountBeforeLongBreak,
            double? pomodoroDurationInMinutes,
            double? shortBreakDurationInMinutes,
            double? longBreakDurationInMinutes)
        configUpdated,
  }) {
    return elapsedDurationUpdated(elapsedDuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
    TResult Function(
            double? pomodoroCountBeforeLongBreak,
            double? pomodoroDurationInMinutes,
            double? shortBreakDurationInMinutes,
            double? longBreakDurationInMinutes)?
        configUpdated,
  }) {
    return elapsedDurationUpdated?.call(elapsedDuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
    TResult Function(
            double? pomodoroCountBeforeLongBreak,
            double? pomodoroDurationInMinutes,
            double? shortBreakDurationInMinutes,
            double? longBreakDurationInMinutes)?
        configUpdated,
    required TResult orElse(),
  }) {
    if (elapsedDurationUpdated != null) {
      return elapsedDurationUpdated(elapsedDuration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Paused value) paused,
    required TResult Function(_BreakSkipped value) breakSkipped,
    required TResult Function(_ResetRequested value) resetRequested,
    required TResult Function(_ElapsedDurationUpdated value)
        elapsedDurationUpdated,
    required TResult Function(_ConfigUpdated value) configUpdated,
  }) {
    return elapsedDurationUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
    TResult Function(_ConfigUpdated value)? configUpdated,
  }) {
    return elapsedDurationUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
    TResult Function(_ConfigUpdated value)? configUpdated,
    required TResult orElse(),
  }) {
    if (elapsedDurationUpdated != null) {
      return elapsedDurationUpdated(this);
    }
    return orElse();
  }
}

abstract class _ElapsedDurationUpdated implements PomodoroTimerEvent {
  const factory _ElapsedDurationUpdated(final Duration elapsedDuration) =
      _$_ElapsedDurationUpdated;

  Duration get elapsedDuration => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ElapsedDurationUpdatedCopyWith<_$_ElapsedDurationUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ConfigUpdatedCopyWith<$Res> {
  factory _$$_ConfigUpdatedCopyWith(
          _$_ConfigUpdated value, $Res Function(_$_ConfigUpdated) then) =
      __$$_ConfigUpdatedCopyWithImpl<$Res>;
  $Res call(
      {double? pomodoroCountBeforeLongBreak,
      double? pomodoroDurationInMinutes,
      double? shortBreakDurationInMinutes,
      double? longBreakDurationInMinutes});
}

/// @nodoc
class __$$_ConfigUpdatedCopyWithImpl<$Res>
    extends _$PomodoroTimerEventCopyWithImpl<$Res>
    implements _$$_ConfigUpdatedCopyWith<$Res> {
  __$$_ConfigUpdatedCopyWithImpl(
      _$_ConfigUpdated _value, $Res Function(_$_ConfigUpdated) _then)
      : super(_value, (v) => _then(v as _$_ConfigUpdated));

  @override
  _$_ConfigUpdated get _value => super._value as _$_ConfigUpdated;

  @override
  $Res call({
    Object? pomodoroCountBeforeLongBreak = freezed,
    Object? pomodoroDurationInMinutes = freezed,
    Object? shortBreakDurationInMinutes = freezed,
    Object? longBreakDurationInMinutes = freezed,
  }) {
    return _then(_$_ConfigUpdated(
      pomodoroCountBeforeLongBreak: pomodoroCountBeforeLongBreak == freezed
          ? _value.pomodoroCountBeforeLongBreak
          : pomodoroCountBeforeLongBreak // ignore: cast_nullable_to_non_nullable
              as double?,
      pomodoroDurationInMinutes: pomodoroDurationInMinutes == freezed
          ? _value.pomodoroDurationInMinutes
          : pomodoroDurationInMinutes // ignore: cast_nullable_to_non_nullable
              as double?,
      shortBreakDurationInMinutes: shortBreakDurationInMinutes == freezed
          ? _value.shortBreakDurationInMinutes
          : shortBreakDurationInMinutes // ignore: cast_nullable_to_non_nullable
              as double?,
      longBreakDurationInMinutes: longBreakDurationInMinutes == freezed
          ? _value.longBreakDurationInMinutes
          : longBreakDurationInMinutes // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_ConfigUpdated implements _ConfigUpdated {
  const _$_ConfigUpdated(
      {this.pomodoroCountBeforeLongBreak,
      this.pomodoroDurationInMinutes,
      this.shortBreakDurationInMinutes,
      this.longBreakDurationInMinutes});

  @override
  final double? pomodoroCountBeforeLongBreak;
  @override
  final double? pomodoroDurationInMinutes;
  @override
  final double? shortBreakDurationInMinutes;
  @override
  final double? longBreakDurationInMinutes;

  @override
  String toString() {
    return 'PomodoroTimerEvent.configUpdated(pomodoroCountBeforeLongBreak: $pomodoroCountBeforeLongBreak, pomodoroDurationInMinutes: $pomodoroDurationInMinutes, shortBreakDurationInMinutes: $shortBreakDurationInMinutes, longBreakDurationInMinutes: $longBreakDurationInMinutes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfigUpdated &&
            const DeepCollectionEquality().equals(
                other.pomodoroCountBeforeLongBreak,
                pomodoroCountBeforeLongBreak) &&
            const DeepCollectionEquality().equals(
                other.pomodoroDurationInMinutes, pomodoroDurationInMinutes) &&
            const DeepCollectionEquality().equals(
                other.shortBreakDurationInMinutes,
                shortBreakDurationInMinutes) &&
            const DeepCollectionEquality().equals(
                other.longBreakDurationInMinutes, longBreakDurationInMinutes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pomodoroCountBeforeLongBreak),
      const DeepCollectionEquality().hash(pomodoroDurationInMinutes),
      const DeepCollectionEquality().hash(shortBreakDurationInMinutes),
      const DeepCollectionEquality().hash(longBreakDurationInMinutes));

  @JsonKey(ignore: true)
  @override
  _$$_ConfigUpdatedCopyWith<_$_ConfigUpdated> get copyWith =>
      __$$_ConfigUpdatedCopyWithImpl<_$_ConfigUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() paused,
    required TResult Function() breakSkipped,
    required TResult Function() resetRequested,
    required TResult Function(Duration elapsedDuration) elapsedDurationUpdated,
    required TResult Function(
            double? pomodoroCountBeforeLongBreak,
            double? pomodoroDurationInMinutes,
            double? shortBreakDurationInMinutes,
            double? longBreakDurationInMinutes)
        configUpdated,
  }) {
    return configUpdated(
        pomodoroCountBeforeLongBreak,
        pomodoroDurationInMinutes,
        shortBreakDurationInMinutes,
        longBreakDurationInMinutes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
    TResult Function(
            double? pomodoroCountBeforeLongBreak,
            double? pomodoroDurationInMinutes,
            double? shortBreakDurationInMinutes,
            double? longBreakDurationInMinutes)?
        configUpdated,
  }) {
    return configUpdated?.call(
        pomodoroCountBeforeLongBreak,
        pomodoroDurationInMinutes,
        shortBreakDurationInMinutes,
        longBreakDurationInMinutes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
    TResult Function(
            double? pomodoroCountBeforeLongBreak,
            double? pomodoroDurationInMinutes,
            double? shortBreakDurationInMinutes,
            double? longBreakDurationInMinutes)?
        configUpdated,
    required TResult orElse(),
  }) {
    if (configUpdated != null) {
      return configUpdated(
          pomodoroCountBeforeLongBreak,
          pomodoroDurationInMinutes,
          shortBreakDurationInMinutes,
          longBreakDurationInMinutes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Paused value) paused,
    required TResult Function(_BreakSkipped value) breakSkipped,
    required TResult Function(_ResetRequested value) resetRequested,
    required TResult Function(_ElapsedDurationUpdated value)
        elapsedDurationUpdated,
    required TResult Function(_ConfigUpdated value) configUpdated,
  }) {
    return configUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
    TResult Function(_ConfigUpdated value)? configUpdated,
  }) {
    return configUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
    TResult Function(_ConfigUpdated value)? configUpdated,
    required TResult orElse(),
  }) {
    if (configUpdated != null) {
      return configUpdated(this);
    }
    return orElse();
  }
}

abstract class _ConfigUpdated implements PomodoroTimerEvent {
  const factory _ConfigUpdated(
      {final double? pomodoroCountBeforeLongBreak,
      final double? pomodoroDurationInMinutes,
      final double? shortBreakDurationInMinutes,
      final double? longBreakDurationInMinutes}) = _$_ConfigUpdated;

  double? get pomodoroCountBeforeLongBreak =>
      throw _privateConstructorUsedError;
  double? get pomodoroDurationInMinutes => throw _privateConstructorUsedError;
  double? get shortBreakDurationInMinutes => throw _privateConstructorUsedError;
  double? get longBreakDurationInMinutes => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ConfigUpdatedCopyWith<_$_ConfigUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

PomodoroTimerState _$PomodoroTimerStateFromJson(Map<String, dynamic> json) {
  return _PomodoroTimerState.fromJson(json);
}

/// @nodoc
mixin _$PomodoroTimerState {
  PomodoroTimerStatus get status => throw _privateConstructorUsedError;
  PomodoroTimerMode get mode => throw _privateConstructorUsedError;
  PomodoroConfig get config => throw _privateConstructorUsedError;
  int get workCount => throw _privateConstructorUsedError; // Durations
  Duration get elapsedDuration => throw _privateConstructorUsedError;
  Duration get selectedDuration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PomodoroTimerStateCopyWith<PomodoroTimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PomodoroTimerStateCopyWith<$Res> {
  factory $PomodoroTimerStateCopyWith(
          PomodoroTimerState value, $Res Function(PomodoroTimerState) then) =
      _$PomodoroTimerStateCopyWithImpl<$Res>;
  $Res call(
      {PomodoroTimerStatus status,
      PomodoroTimerMode mode,
      PomodoroConfig config,
      int workCount,
      Duration elapsedDuration,
      Duration selectedDuration});

  $PomodoroConfigCopyWith<$Res> get config;
}

/// @nodoc
class _$PomodoroTimerStateCopyWithImpl<$Res>
    implements $PomodoroTimerStateCopyWith<$Res> {
  _$PomodoroTimerStateCopyWithImpl(this._value, this._then);

  final PomodoroTimerState _value;
  // ignore: unused_field
  final $Res Function(PomodoroTimerState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? mode = freezed,
    Object? config = freezed,
    Object? workCount = freezed,
    Object? elapsedDuration = freezed,
    Object? selectedDuration = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PomodoroTimerStatus,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as PomodoroTimerMode,
      config: config == freezed
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as PomodoroConfig,
      workCount: workCount == freezed
          ? _value.workCount
          : workCount // ignore: cast_nullable_to_non_nullable
              as int,
      elapsedDuration: elapsedDuration == freezed
          ? _value.elapsedDuration
          : elapsedDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      selectedDuration: selectedDuration == freezed
          ? _value.selectedDuration
          : selectedDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }

  @override
  $PomodoroConfigCopyWith<$Res> get config {
    return $PomodoroConfigCopyWith<$Res>(_value.config, (value) {
      return _then(_value.copyWith(config: value));
    });
  }
}

/// @nodoc
abstract class _$$_PomodoroTimerStateCopyWith<$Res>
    implements $PomodoroTimerStateCopyWith<$Res> {
  factory _$$_PomodoroTimerStateCopyWith(_$_PomodoroTimerState value,
          $Res Function(_$_PomodoroTimerState) then) =
      __$$_PomodoroTimerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {PomodoroTimerStatus status,
      PomodoroTimerMode mode,
      PomodoroConfig config,
      int workCount,
      Duration elapsedDuration,
      Duration selectedDuration});

  @override
  $PomodoroConfigCopyWith<$Res> get config;
}

/// @nodoc
class __$$_PomodoroTimerStateCopyWithImpl<$Res>
    extends _$PomodoroTimerStateCopyWithImpl<$Res>
    implements _$$_PomodoroTimerStateCopyWith<$Res> {
  __$$_PomodoroTimerStateCopyWithImpl(
      _$_PomodoroTimerState _value, $Res Function(_$_PomodoroTimerState) _then)
      : super(_value, (v) => _then(v as _$_PomodoroTimerState));

  @override
  _$_PomodoroTimerState get _value => super._value as _$_PomodoroTimerState;

  @override
  $Res call({
    Object? status = freezed,
    Object? mode = freezed,
    Object? config = freezed,
    Object? workCount = freezed,
    Object? elapsedDuration = freezed,
    Object? selectedDuration = freezed,
  }) {
    return _then(_$_PomodoroTimerState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PomodoroTimerStatus,
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as PomodoroTimerMode,
      config: config == freezed
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as PomodoroConfig,
      workCount: workCount == freezed
          ? _value.workCount
          : workCount // ignore: cast_nullable_to_non_nullable
              as int,
      elapsedDuration: elapsedDuration == freezed
          ? _value.elapsedDuration
          : elapsedDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      selectedDuration: selectedDuration == freezed
          ? _value.selectedDuration
          : selectedDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PomodoroTimerState implements _PomodoroTimerState {
  const _$_PomodoroTimerState(
      {this.status = PomodoroTimerStatus.paused,
      this.mode = PomodoroTimerMode.work,
      this.config = PomodoroConfig.base,
      this.workCount = 0,
      this.elapsedDuration = Duration.zero,
      this.selectedDuration = const Duration(minutes: 5)});

  factory _$_PomodoroTimerState.fromJson(Map<String, dynamic> json) =>
      _$$_PomodoroTimerStateFromJson(json);

  @override
  @JsonKey()
  final PomodoroTimerStatus status;
  @override
  @JsonKey()
  final PomodoroTimerMode mode;
  @override
  @JsonKey()
  final PomodoroConfig config;
  @override
  @JsonKey()
  final int workCount;
// Durations
  @override
  @JsonKey()
  final Duration elapsedDuration;
  @override
  @JsonKey()
  final Duration selectedDuration;

  @override
  String toString() {
    return 'PomodoroTimerState(status: $status, mode: $mode, config: $config, workCount: $workCount, elapsedDuration: $elapsedDuration, selectedDuration: $selectedDuration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PomodoroTimerState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other.config, config) &&
            const DeepCollectionEquality().equals(other.workCount, workCount) &&
            const DeepCollectionEquality()
                .equals(other.elapsedDuration, elapsedDuration) &&
            const DeepCollectionEquality()
                .equals(other.selectedDuration, selectedDuration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(config),
      const DeepCollectionEquality().hash(workCount),
      const DeepCollectionEquality().hash(elapsedDuration),
      const DeepCollectionEquality().hash(selectedDuration));

  @JsonKey(ignore: true)
  @override
  _$$_PomodoroTimerStateCopyWith<_$_PomodoroTimerState> get copyWith =>
      __$$_PomodoroTimerStateCopyWithImpl<_$_PomodoroTimerState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PomodoroTimerStateToJson(this);
  }
}

abstract class _PomodoroTimerState implements PomodoroTimerState {
  const factory _PomodoroTimerState(
      {final PomodoroTimerStatus status,
      final PomodoroTimerMode mode,
      final PomodoroConfig config,
      final int workCount,
      final Duration elapsedDuration,
      final Duration selectedDuration}) = _$_PomodoroTimerState;

  factory _PomodoroTimerState.fromJson(Map<String, dynamic> json) =
      _$_PomodoroTimerState.fromJson;

  @override
  PomodoroTimerStatus get status => throw _privateConstructorUsedError;
  @override
  PomodoroTimerMode get mode => throw _privateConstructorUsedError;
  @override
  PomodoroConfig get config => throw _privateConstructorUsedError;
  @override
  int get workCount => throw _privateConstructorUsedError;
  @override // Durations
  Duration get elapsedDuration => throw _privateConstructorUsedError;
  @override
  Duration get selectedDuration => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PomodoroTimerStateCopyWith<_$_PomodoroTimerState> get copyWith =>
      throw _privateConstructorUsedError;
}
