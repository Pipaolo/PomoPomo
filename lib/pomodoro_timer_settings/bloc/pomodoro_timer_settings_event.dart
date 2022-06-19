part of 'pomodoro_timer_settings_bloc.dart';

@freezed
class PomodoroTimerSettingsEvent with _$PomodoroTimerSettingsEvent {
  const factory PomodoroTimerSettingsEvent.started() = _Started;
  const factory PomodoroTimerSettingsEvent.configUpdated({
    double? pomodoroCountBeforeLongBreak,
    double? pomodoroDurationInMinutes,
    double? shortBreakDurationInMinutes,
    double? longBreakDurationInMinutes,
  }) = _ConfigUpdated;
}
