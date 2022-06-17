// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pomodoro_config.g.dart';
part 'pomodoro_config.freezed.dart';

const _longBreakInterval = 5;
const _shortBreakDuration = 5;
const _longBreakDuration = 15;
const _pomodoroDuration = 5;

/// PomodoroConfig
@freezed
class PomodoroConfig with _$PomodoroConfig {
  /// {@macro pomodoro_config}
  @JsonSerializable(
    anyMap: true,
  )
  const factory PomodoroConfig({
    /// The number of pomodoros before a long break.
    @Default(_longBreakInterval) int longBreakInterval,

    /// The duration of a pomodoro in minutes.
    @Default(_pomodoroDuration) int pomodoroDuration,

    /// The duration of a long break in minutes.
    @Default(_shortBreakDuration) int shortBreakDuration,

    /// The duration of a short break in minutes.
    @Default(_longBreakDuration) int longBreakDuration,
    @Default(false) bool isAutoStartBreak,
    @Default(false) bool isAutoStartPomodoro,
  }) = _PomodoroConfig;

  /// fromJson
  factory PomodoroConfig.fromJson(Map<String, dynamic> json) =>
      _$PomodoroConfigFromJson(json);
}
