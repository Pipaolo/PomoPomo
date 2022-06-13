import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pomodoro_timer_repository/pomodoro_timer_repository.dart';

part 'pomodoro_timer_event.dart';
part 'pomodoro_timer_state.dart';
part 'pomodoro_timer_bloc.freezed.dart';

class PomodoroTimerBloc
    extends HydratedBloc<PomodoroTimerEvent, PomodoroTimerState> {
  PomodoroTimerBloc() : super(const PomodoroTimerState()) {
    on<_Started>(_onStarted);
    on<_Paused>(_onPaused);
    on<_Stopped>(_onStopped);
    on<_ResetRequested>(_onResetRequested);
    on<_ConfigUpdated>(_onConfigUpdated);
    on<_BreakSkipped>(_onBreakSkipped);
    on<_ElapsedDurationUpdated>(_onElapsedDurationUpdated);
  }

  static const _elapsedDurationSecondsKey = 'elapsedDurationSeconds';
  static const _selectedDurationSecondsKey = 'selectedDurationSeconds';
  static const _workCountKey = 'workCount';

  Timer? _timer;

  static const _duration = Duration(seconds: 10);

  @override
  Future<void> close() async {
    _timer?.cancel();
    await super.close();
  }

  void _onTick(Timer timer) {
    final currentElapsedDuration = state.elapsedDuration + _duration;

    add(_ElapsedDurationUpdated(currentElapsedDuration));
  }

  FutureOr<void> _onStarted(_Started event, Emitter<PomodoroTimerState> emit) {
    _timer = Timer.periodic(
      const Duration(
        milliseconds: 300,
      ),
      _onTick,
    );
    emit(
      state.copyWith(status: PomodoroTimerStatus.running),
    );
  }

  FutureOr<void> _onPaused(_Paused event, Emitter<PomodoroTimerState> emit) {
    _timer?.cancel();
    emit(
      state.copyWith(status: PomodoroTimerStatus.paused),
    );
  }

  FutureOr<void> _onStopped(_Stopped event, Emitter<PomodoroTimerState> emit) {
    _timer?.cancel();
    _timer = null;
  }

  FutureOr<void> _onResetRequested(
    _ResetRequested event,
    Emitter<PomodoroTimerState> emit,
  ) {
    emit(
      state.copyWith(
        elapsedDuration: Duration.zero,
      ),
    );
  }

  FutureOr<void> _onElapsedDurationUpdated(
    _ElapsedDurationUpdated event,
    Emitter<PomodoroTimerState> emit,
  ) {
    final config = state.config;
    final elapsedDuration = event.elapsedDuration;
    final selectedDuration = state.selectedDuration;
    final isSessionFinished = selectedDuration <= elapsedDuration;

    if (!isSessionFinished) {
      emit(
        state.copyWith(
          elapsedDuration: elapsedDuration,
        ),
      );
      return null;
    }

    add(const _Paused());
    final mode = state.mode;

    var workCount = state.workCount;

    if (mode == PomodoroTimerMode.work) {
      workCount = state.workCount + 1;
    } else if (mode == PomodoroTimerMode.longBreak) {
      workCount = 0;
    }

    emit(
      state.copyWith(
        status: PomodoroTimerStatus.finished,
        workCount: workCount,
      ),
    );

    final isShortBreakNext = isSessionFinished &&
        state.workCount == 2 &&
        mode == PomodoroTimerMode.work;
    final isLongBreakNext = isSessionFinished &&
        state.workCount >= config.pomodoroCountBeforeLongBreak;

    if (isLongBreakNext) {
      emit(
        state.copyWith(
          elapsedDuration: Duration.zero,
          selectedDuration: Duration(
            minutes: config.longBreakDurationInMinutes.toInt(),
          ),
          mode: PomodoroTimerMode.longBreak,
        ),
      );
      return null;
    }

    if (isShortBreakNext) {
      emit(
        state.copyWith(
          elapsedDuration: Duration.zero,
          selectedDuration: Duration(
            minutes: config.shortBreakDurationInMinutes.toInt(),
          ),
          mode: PomodoroTimerMode.shortBreak,
        ),
      );
      return null;
    }

    emit(
      state.copyWith(
        elapsedDuration: Duration.zero,
        selectedDuration: Duration(
          minutes: config.pomodoroDurationInMinutes.toInt(),
        ),
        mode: PomodoroTimerMode.work,
      ),
    );
  }

  FutureOr<void> _onConfigUpdated(
    _ConfigUpdated event,
    Emitter<PomodoroTimerState> emit,
  ) {
    final config = state.config;

    emit(
      state.copyWith(
        config: config.copyWith(
          longBreakDurationInMinutes: event.longBreakDurationInMinutes ??
              config.longBreakDurationInMinutes,
          shortBreakDurationInMinutes: event.shortBreakDurationInMinutes ??
              config.shortBreakDurationInMinutes,
          pomodoroDurationInMinutes: event.pomodoroDurationInMinutes ??
              config.pomodoroDurationInMinutes,
          pomodoroCountBeforeLongBreak: event.pomodoroCountBeforeLongBreak ??
              config.pomodoroCountBeforeLongBreak,
        ),
      ),
    );
  }

  PomodoroTimerStatus _getStatusFromString(String input) {
    for (final status in PomodoroTimerStatus.values) {
      if (status.name == input) {
        return status;
      }
    }
    return PomodoroTimerStatus.paused;
  }

  PomodoroTimerMode _getModeFromString(String input) {
    for (final mode in PomodoroTimerMode.values) {
      if (mode.name == input) {
        return mode;
      }
    }
    return PomodoroTimerMode.work;
  }

  @override
  PomodoroTimerState? fromJson(Map<String, dynamic> json) {
    final elapsedDurationInSeconds =
        json[_elapsedDurationSecondsKey] as int? ?? 0;
    final selectedDurationInSeconds =
        json[_selectedDurationSecondsKey] as int? ?? 0;
    final workCount = json[_workCountKey] as int? ?? 0;

    return PomodoroTimerState(
      elapsedDuration: Duration(seconds: elapsedDurationInSeconds),
      selectedDuration: Duration(seconds: selectedDurationInSeconds),
      config: PomodoroConfig.fromJson(json['config'] as Map<String, dynamic>),
      workCount: workCount,
      mode: _getModeFromString(json['mode'] as String? ?? ''),
      status: _getStatusFromString(json['status'] as String? ?? ''),
    );
  }

  @override
  Map<String, dynamic>? toJson(PomodoroTimerState state) {
    return <String, dynamic>{
      _selectedDurationSecondsKey: state.selectedDuration.inSeconds,
      _elapsedDurationSecondsKey: state.elapsedDuration.inSeconds,
      _workCountKey: state.workCount,
      'config': state.config.toJson(),
      'mode': state.mode.name,
      'status': state.status.name,
    };
  }

  FutureOr<void> _onBreakSkipped(
    _BreakSkipped event,
    Emitter<PomodoroTimerState> emit,
  ) {
    _timer?.cancel();
    emit(
      state.copyWith(
        elapsedDuration: Duration.zero,
        status: PomodoroTimerStatus.paused,
        mode: PomodoroTimerMode.work,
        workCount:
            state.mode == PomodoroTimerMode.longBreak ? 0 : state.workCount,
        selectedDuration: Duration(
          minutes: state.config.pomodoroDurationInMinutes.toInt(),
        ),
      ),
    );
  }
}
