part of 'pomodoro_timer_bloc.dart';

enum PomodoroTimerStatus { paused, running, finished }

enum PomodoroTimerMode { work, shortBreak, longBreak }

@freezed
class PomodoroTimerState with _$PomodoroTimerState {
  const factory PomodoroTimerState({
    @Default(PomodoroTimerStatus.paused)
        PomodoroTimerStatus status,
    @Default(PomodoroTimerMode.work)
        PomodoroTimerMode mode,
    @Default(
      PomodoroConfig.base,
    )
        PomodoroConfig config,
    @Default(0)
        int workCount,

    // Durations
    @Default(Duration.zero)
        Duration elapsedDuration,
    @Default(Duration(minutes: 5))
        Duration selectedDuration,
  }) = _PomodoroTimerState;
}
