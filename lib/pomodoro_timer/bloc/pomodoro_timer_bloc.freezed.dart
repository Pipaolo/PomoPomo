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
    required TResult Function() played,
    required TResult Function() resumed,
    required TResult Function() paused,
    required TResult Function() breakSkipped,
    required TResult Function() resetRequested,
    required TResult Function(Duration selectedDuration)
        selectedDurationUpdated,
    required TResult Function(Duration elapsedDuration) elapsedDurationUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? played,
    TResult Function()? resumed,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration selectedDuration)? selectedDurationUpdated,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? played,
    TResult Function()? resumed,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration selectedDuration)? selectedDurationUpdated,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Played value) played,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Paused value) paused,
    required TResult Function(_BreakSkipped value) breakSkipped,
    required TResult Function(_ResetRequested value) resetRequested,
    required TResult Function(_SelectedDurationUpdated value)
        selectedDurationUpdated,
    required TResult Function(_ElapsedDurationUpdated value)
        elapsedDurationUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Played value)? played,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_SelectedDurationUpdated value)? selectedDurationUpdated,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Played value)? played,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_SelectedDurationUpdated value)? selectedDurationUpdated,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
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
abstract class _$$_PlayedCopyWith<$Res> {
  factory _$$_PlayedCopyWith(_$_Played value, $Res Function(_$_Played) then) =
      __$$_PlayedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PlayedCopyWithImpl<$Res>
    extends _$PomodoroTimerEventCopyWithImpl<$Res>
    implements _$$_PlayedCopyWith<$Res> {
  __$$_PlayedCopyWithImpl(_$_Played _value, $Res Function(_$_Played) _then)
      : super(_value, (v) => _then(v as _$_Played));

  @override
  _$_Played get _value => super._value as _$_Played;
}

/// @nodoc

class _$_Played implements _Played {
  const _$_Played();

  @override
  String toString() {
    return 'PomodoroTimerEvent.played()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Played);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() played,
    required TResult Function() resumed,
    required TResult Function() paused,
    required TResult Function() breakSkipped,
    required TResult Function() resetRequested,
    required TResult Function(Duration selectedDuration)
        selectedDurationUpdated,
    required TResult Function(Duration elapsedDuration) elapsedDurationUpdated,
  }) {
    return played();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? played,
    TResult Function()? resumed,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration selectedDuration)? selectedDurationUpdated,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
  }) {
    return played?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? played,
    TResult Function()? resumed,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration selectedDuration)? selectedDurationUpdated,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
    required TResult orElse(),
  }) {
    if (played != null) {
      return played();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Played value) played,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Paused value) paused,
    required TResult Function(_BreakSkipped value) breakSkipped,
    required TResult Function(_ResetRequested value) resetRequested,
    required TResult Function(_SelectedDurationUpdated value)
        selectedDurationUpdated,
    required TResult Function(_ElapsedDurationUpdated value)
        elapsedDurationUpdated,
  }) {
    return played(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Played value)? played,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_SelectedDurationUpdated value)? selectedDurationUpdated,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
  }) {
    return played?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Played value)? played,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_SelectedDurationUpdated value)? selectedDurationUpdated,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
    required TResult orElse(),
  }) {
    if (played != null) {
      return played(this);
    }
    return orElse();
  }
}

abstract class _Played implements PomodoroTimerEvent {
  const factory _Played() = _$_Played;
}

/// @nodoc
abstract class _$$_ResumedCopyWith<$Res> {
  factory _$$_ResumedCopyWith(
          _$_Resumed value, $Res Function(_$_Resumed) then) =
      __$$_ResumedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResumedCopyWithImpl<$Res>
    extends _$PomodoroTimerEventCopyWithImpl<$Res>
    implements _$$_ResumedCopyWith<$Res> {
  __$$_ResumedCopyWithImpl(_$_Resumed _value, $Res Function(_$_Resumed) _then)
      : super(_value, (v) => _then(v as _$_Resumed));

  @override
  _$_Resumed get _value => super._value as _$_Resumed;
}

/// @nodoc

class _$_Resumed implements _Resumed {
  const _$_Resumed();

  @override
  String toString() {
    return 'PomodoroTimerEvent.resumed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Resumed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() played,
    required TResult Function() resumed,
    required TResult Function() paused,
    required TResult Function() breakSkipped,
    required TResult Function() resetRequested,
    required TResult Function(Duration selectedDuration)
        selectedDurationUpdated,
    required TResult Function(Duration elapsedDuration) elapsedDurationUpdated,
  }) {
    return resumed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? played,
    TResult Function()? resumed,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration selectedDuration)? selectedDurationUpdated,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
  }) {
    return resumed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? played,
    TResult Function()? resumed,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration selectedDuration)? selectedDurationUpdated,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
    required TResult orElse(),
  }) {
    if (resumed != null) {
      return resumed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Played value) played,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Paused value) paused,
    required TResult Function(_BreakSkipped value) breakSkipped,
    required TResult Function(_ResetRequested value) resetRequested,
    required TResult Function(_SelectedDurationUpdated value)
        selectedDurationUpdated,
    required TResult Function(_ElapsedDurationUpdated value)
        elapsedDurationUpdated,
  }) {
    return resumed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Played value)? played,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_SelectedDurationUpdated value)? selectedDurationUpdated,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
  }) {
    return resumed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Played value)? played,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_SelectedDurationUpdated value)? selectedDurationUpdated,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
    required TResult orElse(),
  }) {
    if (resumed != null) {
      return resumed(this);
    }
    return orElse();
  }
}

abstract class _Resumed implements PomodoroTimerEvent {
  const factory _Resumed() = _$_Resumed;
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
    required TResult Function() played,
    required TResult Function() resumed,
    required TResult Function() paused,
    required TResult Function() breakSkipped,
    required TResult Function() resetRequested,
    required TResult Function(Duration selectedDuration)
        selectedDurationUpdated,
    required TResult Function(Duration elapsedDuration) elapsedDurationUpdated,
  }) {
    return paused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? played,
    TResult Function()? resumed,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration selectedDuration)? selectedDurationUpdated,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
  }) {
    return paused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? played,
    TResult Function()? resumed,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration selectedDuration)? selectedDurationUpdated,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
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
    required TResult Function(_Played value) played,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Paused value) paused,
    required TResult Function(_BreakSkipped value) breakSkipped,
    required TResult Function(_ResetRequested value) resetRequested,
    required TResult Function(_SelectedDurationUpdated value)
        selectedDurationUpdated,
    required TResult Function(_ElapsedDurationUpdated value)
        elapsedDurationUpdated,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Played value)? played,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_SelectedDurationUpdated value)? selectedDurationUpdated,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Played value)? played,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_SelectedDurationUpdated value)? selectedDurationUpdated,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
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
    required TResult Function() played,
    required TResult Function() resumed,
    required TResult Function() paused,
    required TResult Function() breakSkipped,
    required TResult Function() resetRequested,
    required TResult Function(Duration selectedDuration)
        selectedDurationUpdated,
    required TResult Function(Duration elapsedDuration) elapsedDurationUpdated,
  }) {
    return breakSkipped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? played,
    TResult Function()? resumed,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration selectedDuration)? selectedDurationUpdated,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
  }) {
    return breakSkipped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? played,
    TResult Function()? resumed,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration selectedDuration)? selectedDurationUpdated,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
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
    required TResult Function(_Played value) played,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Paused value) paused,
    required TResult Function(_BreakSkipped value) breakSkipped,
    required TResult Function(_ResetRequested value) resetRequested,
    required TResult Function(_SelectedDurationUpdated value)
        selectedDurationUpdated,
    required TResult Function(_ElapsedDurationUpdated value)
        elapsedDurationUpdated,
  }) {
    return breakSkipped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Played value)? played,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_SelectedDurationUpdated value)? selectedDurationUpdated,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
  }) {
    return breakSkipped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Played value)? played,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_SelectedDurationUpdated value)? selectedDurationUpdated,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
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
    required TResult Function() played,
    required TResult Function() resumed,
    required TResult Function() paused,
    required TResult Function() breakSkipped,
    required TResult Function() resetRequested,
    required TResult Function(Duration selectedDuration)
        selectedDurationUpdated,
    required TResult Function(Duration elapsedDuration) elapsedDurationUpdated,
  }) {
    return resetRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? played,
    TResult Function()? resumed,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration selectedDuration)? selectedDurationUpdated,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
  }) {
    return resetRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? played,
    TResult Function()? resumed,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration selectedDuration)? selectedDurationUpdated,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
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
    required TResult Function(_Played value) played,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Paused value) paused,
    required TResult Function(_BreakSkipped value) breakSkipped,
    required TResult Function(_ResetRequested value) resetRequested,
    required TResult Function(_SelectedDurationUpdated value)
        selectedDurationUpdated,
    required TResult Function(_ElapsedDurationUpdated value)
        elapsedDurationUpdated,
  }) {
    return resetRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Played value)? played,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_SelectedDurationUpdated value)? selectedDurationUpdated,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
  }) {
    return resetRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Played value)? played,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_SelectedDurationUpdated value)? selectedDurationUpdated,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
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
abstract class _$$_SelectedDurationUpdatedCopyWith<$Res> {
  factory _$$_SelectedDurationUpdatedCopyWith(_$_SelectedDurationUpdated value,
          $Res Function(_$_SelectedDurationUpdated) then) =
      __$$_SelectedDurationUpdatedCopyWithImpl<$Res>;
  $Res call({Duration selectedDuration});
}

/// @nodoc
class __$$_SelectedDurationUpdatedCopyWithImpl<$Res>
    extends _$PomodoroTimerEventCopyWithImpl<$Res>
    implements _$$_SelectedDurationUpdatedCopyWith<$Res> {
  __$$_SelectedDurationUpdatedCopyWithImpl(_$_SelectedDurationUpdated _value,
      $Res Function(_$_SelectedDurationUpdated) _then)
      : super(_value, (v) => _then(v as _$_SelectedDurationUpdated));

  @override
  _$_SelectedDurationUpdated get _value =>
      super._value as _$_SelectedDurationUpdated;

  @override
  $Res call({
    Object? selectedDuration = freezed,
  }) {
    return _then(_$_SelectedDurationUpdated(
      selectedDuration == freezed
          ? _value.selectedDuration
          : selectedDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_SelectedDurationUpdated implements _SelectedDurationUpdated {
  const _$_SelectedDurationUpdated(this.selectedDuration);

  @override
  final Duration selectedDuration;

  @override
  String toString() {
    return 'PomodoroTimerEvent.selectedDurationUpdated(selectedDuration: $selectedDuration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedDurationUpdated &&
            const DeepCollectionEquality()
                .equals(other.selectedDuration, selectedDuration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedDuration));

  @JsonKey(ignore: true)
  @override
  _$$_SelectedDurationUpdatedCopyWith<_$_SelectedDurationUpdated>
      get copyWith =>
          __$$_SelectedDurationUpdatedCopyWithImpl<_$_SelectedDurationUpdated>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() played,
    required TResult Function() resumed,
    required TResult Function() paused,
    required TResult Function() breakSkipped,
    required TResult Function() resetRequested,
    required TResult Function(Duration selectedDuration)
        selectedDurationUpdated,
    required TResult Function(Duration elapsedDuration) elapsedDurationUpdated,
  }) {
    return selectedDurationUpdated(selectedDuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? played,
    TResult Function()? resumed,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration selectedDuration)? selectedDurationUpdated,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
  }) {
    return selectedDurationUpdated?.call(selectedDuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? played,
    TResult Function()? resumed,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration selectedDuration)? selectedDurationUpdated,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
    required TResult orElse(),
  }) {
    if (selectedDurationUpdated != null) {
      return selectedDurationUpdated(selectedDuration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Played value) played,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Paused value) paused,
    required TResult Function(_BreakSkipped value) breakSkipped,
    required TResult Function(_ResetRequested value) resetRequested,
    required TResult Function(_SelectedDurationUpdated value)
        selectedDurationUpdated,
    required TResult Function(_ElapsedDurationUpdated value)
        elapsedDurationUpdated,
  }) {
    return selectedDurationUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Played value)? played,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_SelectedDurationUpdated value)? selectedDurationUpdated,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
  }) {
    return selectedDurationUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Played value)? played,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_SelectedDurationUpdated value)? selectedDurationUpdated,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
    required TResult orElse(),
  }) {
    if (selectedDurationUpdated != null) {
      return selectedDurationUpdated(this);
    }
    return orElse();
  }
}

abstract class _SelectedDurationUpdated implements PomodoroTimerEvent {
  const factory _SelectedDurationUpdated(final Duration selectedDuration) =
      _$_SelectedDurationUpdated;

  Duration get selectedDuration => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SelectedDurationUpdatedCopyWith<_$_SelectedDurationUpdated>
      get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function() played,
    required TResult Function() resumed,
    required TResult Function() paused,
    required TResult Function() breakSkipped,
    required TResult Function() resetRequested,
    required TResult Function(Duration selectedDuration)
        selectedDurationUpdated,
    required TResult Function(Duration elapsedDuration) elapsedDurationUpdated,
  }) {
    return elapsedDurationUpdated(elapsedDuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? played,
    TResult Function()? resumed,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration selectedDuration)? selectedDurationUpdated,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
  }) {
    return elapsedDurationUpdated?.call(elapsedDuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? played,
    TResult Function()? resumed,
    TResult Function()? paused,
    TResult Function()? breakSkipped,
    TResult Function()? resetRequested,
    TResult Function(Duration selectedDuration)? selectedDurationUpdated,
    TResult Function(Duration elapsedDuration)? elapsedDurationUpdated,
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
    required TResult Function(_Played value) played,
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Paused value) paused,
    required TResult Function(_BreakSkipped value) breakSkipped,
    required TResult Function(_ResetRequested value) resetRequested,
    required TResult Function(_SelectedDurationUpdated value)
        selectedDurationUpdated,
    required TResult Function(_ElapsedDurationUpdated value)
        elapsedDurationUpdated,
  }) {
    return elapsedDurationUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Played value)? played,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_SelectedDurationUpdated value)? selectedDurationUpdated,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
  }) {
    return elapsedDurationUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Played value)? played,
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Paused value)? paused,
    TResult Function(_BreakSkipped value)? breakSkipped,
    TResult Function(_ResetRequested value)? resetRequested,
    TResult Function(_SelectedDurationUpdated value)? selectedDurationUpdated,
    TResult Function(_ElapsedDurationUpdated value)? elapsedDurationUpdated,
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

PomodoroTimerState _$PomodoroTimerStateFromJson(Map<String, dynamic> json) {
  return _PomodoroTimerState.fromJson(json);
}

/// @nodoc
mixin _$PomodoroTimerState {
  PomodoroTimerStatus get status => throw _privateConstructorUsedError;
  PomodoroTimerMode get mode => throw _privateConstructorUsedError;
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
      int workCount,
      Duration elapsedDuration,
      Duration selectedDuration});
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
abstract class _$$_PomodoroTimerStateCopyWith<$Res>
    implements $PomodoroTimerStateCopyWith<$Res> {
  factory _$$_PomodoroTimerStateCopyWith(_$_PomodoroTimerState value,
          $Res Function(_$_PomodoroTimerState) then) =
      __$$_PomodoroTimerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {PomodoroTimerStatus status,
      PomodoroTimerMode mode,
      int workCount,
      Duration elapsedDuration,
      Duration selectedDuration});
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
    return 'PomodoroTimerState(status: $status, mode: $mode, workCount: $workCount, elapsedDuration: $elapsedDuration, selectedDuration: $selectedDuration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PomodoroTimerState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
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
