import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pomodoro_timer_repository/pomodoro_timer_repository.dart';

part 'pomodoro_timer_event.dart';
part 'pomodoro_timer_state.dart';
part 'pomodoro_timer_bloc.g.dart';
part 'pomodoro_timer_bloc.freezed.dart';

class PomodoroTimerBloc
    extends HydratedBloc<PomodoroTimerEvent, PomodoroTimerState> {
  PomodoroTimerBloc() : super(const PomodoroTimerState()) {
    on<_Started>(_onStarted);
    on<_Paused>(_onPaused);
    on<_ResetRequested>(_onResetRequested);
    on<_ConfigUpdated>(_onConfigUpdated);
    on<_BreakSkipped>(_onBreakSkipped);
    on<_ElapsedDurationUpdated>(_onElapsedDurationUpdated);
  }

  Timer? _timer;

  static const _duration = Duration(seconds: 1);

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
        seconds: 1,
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
      state.copyWith(
        status: PomodoroTimerStatus.paused,
      ),
    );
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
    final workCount = _computeWorkCountFromMode(mode);

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

  FutureOr<void> _onBreakSkipped(
    _BreakSkipped event,
    Emitter<PomodoroTimerState> emit,
  ) {
    _timer?.cancel();

    emit(
      state.copyWith(
        elapsedDuration: Duration.zero,
        status: PomodoroTimerStatus.finished,
        mode: PomodoroTimerMode.work,
        workCount:
            state.mode == PomodoroTimerMode.longBreak ? 0 : state.workCount,
        selectedDuration: Duration(
          minutes: state.config.pomodoroDurationInMinutes.toInt(),
        ),
      ),
    );
  }

  int _computeWorkCountFromMode(PomodoroTimerMode mode) {
    var workCount = state.workCount;

    if (mode == PomodoroTimerMode.work) {
      workCount = state.workCount + 1;
    } else if (mode == PomodoroTimerMode.longBreak) {
      workCount = 0;
    }

    return workCount;
  }

  @override
  PomodoroTimerState? fromJson(Map<String, dynamic> json) {
    return PomodoroTimerState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(PomodoroTimerState state) {
    return state.toJson();
  }
}
