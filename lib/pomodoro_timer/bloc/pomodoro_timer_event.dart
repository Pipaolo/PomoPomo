part of 'pomodoro_timer_bloc.dart';

@freezed
class PomodoroTimerEvent with _$PomodoroTimerEvent {
  const factory PomodoroTimerEvent.played() = _Played;
  const factory PomodoroTimerEvent.paused() = _Paused;
  const factory PomodoroTimerEvent.breakSkipped() = _BreakSkipped;
  const factory PomodoroTimerEvent.resetRequested() = _ResetRequested;
  const factory PomodoroTimerEvent.selectedDurationUpdated(
    Duration selectedDuration,
  ) = _SelectedDurationUpdated;
  const factory PomodoroTimerEvent.elapsedDurationUpdated(
    Duration elapsedDuration,
  ) = _ElapsedDurationUpdated;
}
