// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pomodoro_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PomodoroConfig _$PomodoroConfigFromJson(Map<String, dynamic> json) {
  return _PomodoroConfig.fromJson(json);
}

/// @nodoc
mixin _$PomodoroConfig {
  /// The number of pomodoros before a long break.
  int get longBreakInterval => throw _privateConstructorUsedError;

  /// The duration of a pomodoro in minutes.
  int get pomodoroDuration => throw _privateConstructorUsedError;

  /// The duration of a long break in minutes.
  int get shortBreakDuration => throw _privateConstructorUsedError;

  /// The duration of a short break in minutes.
  int get longBreakDuration => throw _privateConstructorUsedError;
  bool get isAutoStartBreak => throw _privateConstructorUsedError;
  bool get isAutoStartPomodoro => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PomodoroConfigCopyWith<PomodoroConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PomodoroConfigCopyWith<$Res> {
  factory $PomodoroConfigCopyWith(
          PomodoroConfig value, $Res Function(PomodoroConfig) then) =
      _$PomodoroConfigCopyWithImpl<$Res>;
  $Res call(
      {int longBreakInterval,
      int pomodoroDuration,
      int shortBreakDuration,
      int longBreakDuration,
      bool isAutoStartBreak,
      bool isAutoStartPomodoro});
}

/// @nodoc
class _$PomodoroConfigCopyWithImpl<$Res>
    implements $PomodoroConfigCopyWith<$Res> {
  _$PomodoroConfigCopyWithImpl(this._value, this._then);

  final PomodoroConfig _value;
  // ignore: unused_field
  final $Res Function(PomodoroConfig) _then;

  @override
  $Res call({
    Object? longBreakInterval = freezed,
    Object? pomodoroDuration = freezed,
    Object? shortBreakDuration = freezed,
    Object? longBreakDuration = freezed,
    Object? isAutoStartBreak = freezed,
    Object? isAutoStartPomodoro = freezed,
  }) {
    return _then(_value.copyWith(
      longBreakInterval: longBreakInterval == freezed
          ? _value.longBreakInterval
          : longBreakInterval // ignore: cast_nullable_to_non_nullable
              as int,
      pomodoroDuration: pomodoroDuration == freezed
          ? _value.pomodoroDuration
          : pomodoroDuration // ignore: cast_nullable_to_non_nullable
              as int,
      shortBreakDuration: shortBreakDuration == freezed
          ? _value.shortBreakDuration
          : shortBreakDuration // ignore: cast_nullable_to_non_nullable
              as int,
      longBreakDuration: longBreakDuration == freezed
          ? _value.longBreakDuration
          : longBreakDuration // ignore: cast_nullable_to_non_nullable
              as int,
      isAutoStartBreak: isAutoStartBreak == freezed
          ? _value.isAutoStartBreak
          : isAutoStartBreak // ignore: cast_nullable_to_non_nullable
              as bool,
      isAutoStartPomodoro: isAutoStartPomodoro == freezed
          ? _value.isAutoStartPomodoro
          : isAutoStartPomodoro // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_PomodoroConfigCopyWith<$Res>
    implements $PomodoroConfigCopyWith<$Res> {
  factory _$$_PomodoroConfigCopyWith(
          _$_PomodoroConfig value, $Res Function(_$_PomodoroConfig) then) =
      __$$_PomodoroConfigCopyWithImpl<$Res>;
  @override
  $Res call(
      {int longBreakInterval,
      int pomodoroDuration,
      int shortBreakDuration,
      int longBreakDuration,
      bool isAutoStartBreak,
      bool isAutoStartPomodoro});
}

/// @nodoc
class __$$_PomodoroConfigCopyWithImpl<$Res>
    extends _$PomodoroConfigCopyWithImpl<$Res>
    implements _$$_PomodoroConfigCopyWith<$Res> {
  __$$_PomodoroConfigCopyWithImpl(
      _$_PomodoroConfig _value, $Res Function(_$_PomodoroConfig) _then)
      : super(_value, (v) => _then(v as _$_PomodoroConfig));

  @override
  _$_PomodoroConfig get _value => super._value as _$_PomodoroConfig;

  @override
  $Res call({
    Object? longBreakInterval = freezed,
    Object? pomodoroDuration = freezed,
    Object? shortBreakDuration = freezed,
    Object? longBreakDuration = freezed,
    Object? isAutoStartBreak = freezed,
    Object? isAutoStartPomodoro = freezed,
  }) {
    return _then(_$_PomodoroConfig(
      longBreakInterval: longBreakInterval == freezed
          ? _value.longBreakInterval
          : longBreakInterval // ignore: cast_nullable_to_non_nullable
              as int,
      pomodoroDuration: pomodoroDuration == freezed
          ? _value.pomodoroDuration
          : pomodoroDuration // ignore: cast_nullable_to_non_nullable
              as int,
      shortBreakDuration: shortBreakDuration == freezed
          ? _value.shortBreakDuration
          : shortBreakDuration // ignore: cast_nullable_to_non_nullable
              as int,
      longBreakDuration: longBreakDuration == freezed
          ? _value.longBreakDuration
          : longBreakDuration // ignore: cast_nullable_to_non_nullable
              as int,
      isAutoStartBreak: isAutoStartBreak == freezed
          ? _value.isAutoStartBreak
          : isAutoStartBreak // ignore: cast_nullable_to_non_nullable
              as bool,
      isAutoStartPomodoro: isAutoStartPomodoro == freezed
          ? _value.isAutoStartPomodoro
          : isAutoStartPomodoro // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(anyMap: true)
class _$_PomodoroConfig implements _PomodoroConfig {
  const _$_PomodoroConfig(
      {this.longBreakInterval = _longBreakInterval,
      this.pomodoroDuration = _pomodoroDuration,
      this.shortBreakDuration = _shortBreakDuration,
      this.longBreakDuration = _longBreakDuration,
      this.isAutoStartBreak = false,
      this.isAutoStartPomodoro = false});

  factory _$_PomodoroConfig.fromJson(Map<String, dynamic> json) =>
      _$$_PomodoroConfigFromJson(json);

  /// The number of pomodoros before a long break.
  @override
  @JsonKey()
  final int longBreakInterval;

  /// The duration of a pomodoro in minutes.
  @override
  @JsonKey()
  final int pomodoroDuration;

  /// The duration of a long break in minutes.
  @override
  @JsonKey()
  final int shortBreakDuration;

  /// The duration of a short break in minutes.
  @override
  @JsonKey()
  final int longBreakDuration;
  @override
  @JsonKey()
  final bool isAutoStartBreak;
  @override
  @JsonKey()
  final bool isAutoStartPomodoro;

  @override
  String toString() {
    return 'PomodoroConfig(longBreakInterval: $longBreakInterval, pomodoroDuration: $pomodoroDuration, shortBreakDuration: $shortBreakDuration, longBreakDuration: $longBreakDuration, isAutoStartBreak: $isAutoStartBreak, isAutoStartPomodoro: $isAutoStartPomodoro)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PomodoroConfig &&
            const DeepCollectionEquality()
                .equals(other.longBreakInterval, longBreakInterval) &&
            const DeepCollectionEquality()
                .equals(other.pomodoroDuration, pomodoroDuration) &&
            const DeepCollectionEquality()
                .equals(other.shortBreakDuration, shortBreakDuration) &&
            const DeepCollectionEquality()
                .equals(other.longBreakDuration, longBreakDuration) &&
            const DeepCollectionEquality()
                .equals(other.isAutoStartBreak, isAutoStartBreak) &&
            const DeepCollectionEquality()
                .equals(other.isAutoStartPomodoro, isAutoStartPomodoro));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(longBreakInterval),
      const DeepCollectionEquality().hash(pomodoroDuration),
      const DeepCollectionEquality().hash(shortBreakDuration),
      const DeepCollectionEquality().hash(longBreakDuration),
      const DeepCollectionEquality().hash(isAutoStartBreak),
      const DeepCollectionEquality().hash(isAutoStartPomodoro));

  @JsonKey(ignore: true)
  @override
  _$$_PomodoroConfigCopyWith<_$_PomodoroConfig> get copyWith =>
      __$$_PomodoroConfigCopyWithImpl<_$_PomodoroConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PomodoroConfigToJson(this);
  }
}

abstract class _PomodoroConfig implements PomodoroConfig {
  const factory _PomodoroConfig(
      {final int longBreakInterval,
      final int pomodoroDuration,
      final int shortBreakDuration,
      final int longBreakDuration,
      final bool isAutoStartBreak,
      final bool isAutoStartPomodoro}) = _$_PomodoroConfig;

  factory _PomodoroConfig.fromJson(Map<String, dynamic> json) =
      _$_PomodoroConfig.fromJson;

  @override

  /// The number of pomodoros before a long break.
  int get longBreakInterval => throw _privateConstructorUsedError;
  @override

  /// The duration of a pomodoro in minutes.
  int get pomodoroDuration => throw _privateConstructorUsedError;
  @override

  /// The duration of a long break in minutes.
  int get shortBreakDuration => throw _privateConstructorUsedError;
  @override

  /// The duration of a short break in minutes.
  int get longBreakDuration => throw _privateConstructorUsedError;
  @override
  bool get isAutoStartBreak => throw _privateConstructorUsedError;
  @override
  bool get isAutoStartPomodoro => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PomodoroConfigCopyWith<_$_PomodoroConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
