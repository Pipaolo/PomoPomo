import 'package:freezed_annotation/freezed_annotation.dart';

part 'pomodoro_config.g.dart';
part 'pomodoro_config.freezed.dart';

/// PomodoroConfig
@freezed
class PomodoroConfig with _$PomodoroConfig {
  /// {@macro pomodoro_config}
  const factory PomodoroConfig({
    required double pomodoroCountBeforeLongBreak,
    required double pomodoroDurationInMinutes,
    required double longBreakDurationInMinutes,
    required double shortBreakDurationInMinutes,
    @Default(false) bool isAutoStartBreak,
    @Default(false) bool isAutoStartPomodoro,
  }) = _PomodoroConfig;

  /// fromJson
  factory PomodoroConfig.fromJson(Map<String, dynamic> json) =>
      _$PomodoroConfigFromJson(json);

  /// base
  static const PomodoroConfig base = PomodoroConfig(
    pomodoroCountBeforeLongBreak: 4,
    pomodoroDurationInMinutes: 5,
    longBreakDurationInMinutes: 15,
    shortBreakDurationInMinutes: 5,
  );
}
