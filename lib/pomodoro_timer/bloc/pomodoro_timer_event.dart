part of 'pomodoro_timer_bloc.dart';

@freezed
class PomodoroTimerEvent with _$PomodoroTimerEvent {
  const factory PomodoroTimerEvent.started() = _Started;
  const factory PomodoroTimerEvent.stopped() = _Stopped;
  const factory PomodoroTimerEvent.paused() = _Paused;
  const factory PomodoroTimerEvent.breakSkipped() = _BreakSkipped;
  const factory PomodoroTimerEvent.resetRequested() = _ResetRequested;
  const factory PomodoroTimerEvent.elapsedDurationUpdated(
    Duration elapsedDuration,
  ) = _ElapsedDurationUpdated;
  const factory PomodoroTimerEvent.configUpdated({
    double? pomodoroCountBeforeLongBreak,
    double? pomodoroDurationInMinutes,
    double? shortBreakDurationInMinutes,
    double? longBreakDurationInMinutes,
  }) = _ConfigUpdated;
}
