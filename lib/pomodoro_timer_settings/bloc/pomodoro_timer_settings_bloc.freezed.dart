// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pomodoro_timer_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PomodoroTimerSettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
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
    required TResult Function(_ConfigUpdated value) configUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ConfigUpdated value)? configUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ConfigUpdated value)? configUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PomodoroTimerSettingsEventCopyWith<$Res> {
  factory $PomodoroTimerSettingsEventCopyWith(PomodoroTimerSettingsEvent value,
          $Res Function(PomodoroTimerSettingsEvent) then) =
      _$PomodoroTimerSettingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PomodoroTimerSettingsEventCopyWithImpl<$Res>
    implements $PomodoroTimerSettingsEventCopyWith<$Res> {
  _$PomodoroTimerSettingsEventCopyWithImpl(this._value, this._then);

  final PomodoroTimerSettingsEvent _value;
  // ignore: unused_field
  final $Res Function(PomodoroTimerSettingsEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$PomodoroTimerSettingsEventCopyWithImpl<$Res>
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
    return 'PomodoroTimerSettingsEvent.started()';
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
    required TResult Function(_ConfigUpdated value) configUpdated,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ConfigUpdated value)? configUpdated,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ConfigUpdated value)? configUpdated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PomodoroTimerSettingsEvent {
  const factory _Started() = _$_Started;
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
    extends _$PomodoroTimerSettingsEventCopyWithImpl<$Res>
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
    return 'PomodoroTimerSettingsEvent.configUpdated(pomodoroCountBeforeLongBreak: $pomodoroCountBeforeLongBreak, pomodoroDurationInMinutes: $pomodoroDurationInMinutes, shortBreakDurationInMinutes: $shortBreakDurationInMinutes, longBreakDurationInMinutes: $longBreakDurationInMinutes)';
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
    required TResult Function(_ConfigUpdated value) configUpdated,
  }) {
    return configUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ConfigUpdated value)? configUpdated,
  }) {
    return configUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ConfigUpdated value)? configUpdated,
    required TResult orElse(),
  }) {
    if (configUpdated != null) {
      return configUpdated(this);
    }
    return orElse();
  }
}

abstract class _ConfigUpdated implements PomodoroTimerSettingsEvent {
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

/// @nodoc
mixin _$PomodoroTimerSettingsState {
  PomodoroConfig get config => throw _privateConstructorUsedError;
  PomodoroTimerSettingsStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PomodoroTimerSettingsStateCopyWith<PomodoroTimerSettingsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PomodoroTimerSettingsStateCopyWith<$Res> {
  factory $PomodoroTimerSettingsStateCopyWith(PomodoroTimerSettingsState value,
          $Res Function(PomodoroTimerSettingsState) then) =
      _$PomodoroTimerSettingsStateCopyWithImpl<$Res>;
  $Res call({PomodoroConfig config, PomodoroTimerSettingsStatus status});

  $PomodoroConfigCopyWith<$Res> get config;
}

/// @nodoc
class _$PomodoroTimerSettingsStateCopyWithImpl<$Res>
    implements $PomodoroTimerSettingsStateCopyWith<$Res> {
  _$PomodoroTimerSettingsStateCopyWithImpl(this._value, this._then);

  final PomodoroTimerSettingsState _value;
  // ignore: unused_field
  final $Res Function(PomodoroTimerSettingsState) _then;

  @override
  $Res call({
    Object? config = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      config: config == freezed
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as PomodoroConfig,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PomodoroTimerSettingsStatus,
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
abstract class _$$_PomodoroTimerSettingsStateCopyWith<$Res>
    implements $PomodoroTimerSettingsStateCopyWith<$Res> {
  factory _$$_PomodoroTimerSettingsStateCopyWith(
          _$_PomodoroTimerSettingsState value,
          $Res Function(_$_PomodoroTimerSettingsState) then) =
      __$$_PomodoroTimerSettingsStateCopyWithImpl<$Res>;
  @override
  $Res call({PomodoroConfig config, PomodoroTimerSettingsStatus status});

  @override
  $PomodoroConfigCopyWith<$Res> get config;
}

/// @nodoc
class __$$_PomodoroTimerSettingsStateCopyWithImpl<$Res>
    extends _$PomodoroTimerSettingsStateCopyWithImpl<$Res>
    implements _$$_PomodoroTimerSettingsStateCopyWith<$Res> {
  __$$_PomodoroTimerSettingsStateCopyWithImpl(
      _$_PomodoroTimerSettingsState _value,
      $Res Function(_$_PomodoroTimerSettingsState) _then)
      : super(_value, (v) => _then(v as _$_PomodoroTimerSettingsState));

  @override
  _$_PomodoroTimerSettingsState get _value =>
      super._value as _$_PomodoroTimerSettingsState;

  @override
  $Res call({
    Object? config = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_PomodoroTimerSettingsState(
      config: config == freezed
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as PomodoroConfig,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PomodoroTimerSettingsStatus,
    ));
  }
}

/// @nodoc

class _$_PomodoroTimerSettingsState implements _PomodoroTimerSettingsState {
  const _$_PomodoroTimerSettingsState(
      {required this.config,
      this.status = PomodoroTimerSettingsStatus.initial});

  @override
  final PomodoroConfig config;
  @override
  @JsonKey()
  final PomodoroTimerSettingsStatus status;

  @override
  String toString() {
    return 'PomodoroTimerSettingsState(config: $config, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PomodoroTimerSettingsState &&
            const DeepCollectionEquality().equals(other.config, config) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(config),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_PomodoroTimerSettingsStateCopyWith<_$_PomodoroTimerSettingsState>
      get copyWith => __$$_PomodoroTimerSettingsStateCopyWithImpl<
          _$_PomodoroTimerSettingsState>(this, _$identity);
}

abstract class _PomodoroTimerSettingsState
    implements PomodoroTimerSettingsState {
  const factory _PomodoroTimerSettingsState(
          {required final PomodoroConfig config,
          final PomodoroTimerSettingsStatus status}) =
      _$_PomodoroTimerSettingsState;

  @override
  PomodoroConfig get config => throw _privateConstructorUsedError;
  @override
  PomodoroTimerSettingsStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PomodoroTimerSettingsStateCopyWith<_$_PomodoroTimerSettingsState>
      get copyWith => throw _privateConstructorUsedError;
}
