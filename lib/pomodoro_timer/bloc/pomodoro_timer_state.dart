// ignore_for_file: invalid_annotation_target

part of 'pomodoro_timer_bloc.dart';

enum PomodoroTimerStatus {
  paused,
  running,
  finished,
  finishedBreak,
}

enum PomodoroTimerMode { work, shortBreak, longBreak }

@freezed
class PomodoroTimerState with _$PomodoroTimerState {
  @JsonSerializable(explicitToJson: true)
  const factory PomodoroTimerState({
    @Default(PomodoroTimerStatus.paused) PomodoroTimerStatus status,
    @Default(PomodoroTimerMode.work) PomodoroTimerMode mode,
    @Default(0) int workCount,

    // Durations
    @Default(Duration.zero) Duration elapsedDuration,
    @Default(Duration(minutes: 5)) Duration selectedDuration,
  }) = _PomodoroTimerState;

  factory PomodoroTimerState.fromJson(Map<String, dynamic> json) =>
      _$PomodoroTimerStateFromJson(json);
}
