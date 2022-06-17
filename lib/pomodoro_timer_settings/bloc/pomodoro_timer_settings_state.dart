// ignore_for_file: invalid_annotation_target

part of 'pomodoro_timer_settings_bloc.dart';

enum PomodoroTimerSettingsStatus { initial, loading, success, failure }

@freezed
class PomodoroTimerSettingsState with _$PomodoroTimerSettingsState {
  const factory PomodoroTimerSettingsState({
    required PomodoroConfig config,
    @Default(PomodoroTimerSettingsStatus.initial)
        PomodoroTimerSettingsStatus status,
  }) = _PomodoroTimerSettingsState;
}
