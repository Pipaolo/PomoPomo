import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pomodoro_config_repository/pomodoro_config_repository.dart';

part 'pomodoro_timer_settings_bloc.freezed.dart';
part 'pomodoro_timer_settings_event.dart';
part 'pomodoro_timer_settings_state.dart';

class PomodoroTimerSettingsBloc
    extends Bloc<PomodoroTimerSettingsEvent, PomodoroTimerSettingsState> {
  PomodoroTimerSettingsBloc({
    required PomodoroConfigRepository configRepository,
  })  : _configRepository = configRepository,
        super(
          const PomodoroTimerSettingsState(
            config: PomodoroConfig(),
          ),
        ) {
    on<_ConfigUpdated>(_onConfigUpdated);
    on<_Started>(_onStarted);
  }

  final PomodoroConfigRepository _configRepository;

  FutureOr<void> _onConfigUpdated(
    _ConfigUpdated event,
    Emitter<PomodoroTimerSettingsState> emit,
  ) async {
    final config = state.config;
    final updatedConfig = config.copyWith(
      longBreakDuration:
          event.longBreakDurationInMinutes?.toInt() ?? config.longBreakDuration,
      shortBreakDuration: event.shortBreakDurationInMinutes?.toInt() ??
          config.shortBreakDuration,
      pomodoroDuration:
          event.pomodoroDurationInMinutes?.toInt() ?? config.pomodoroDuration,
      longBreakInterval: event.pomodoroCountBeforeLongBreak?.toInt() ??
          config.longBreakInterval,
    );
    await _configRepository.saveConfig(updatedConfig);

    emit(
      state.copyWith(
        config: updatedConfig,
      ),
    );
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<PomodoroTimerSettingsState> emit,
  ) async {
    emit(
      state.copyWith(
        status: PomodoroTimerSettingsStatus.loading,
      ),
    );
    final config = await _configRepository.getConfig();

    emit(
      state.copyWith(
        config: config,
        status: PomodoroTimerSettingsStatus.success,
      ),
    );
  }
}
