import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pomodoro_config_repository/pomodoro_config_repository.dart';

part 'pomodoro_timer_event.dart';
part 'pomodoro_timer_state.dart';
part 'pomodoro_timer_bloc.g.dart';
part 'pomodoro_timer_bloc.freezed.dart';

class PomodoroTimerBloc
    extends HydratedBloc<PomodoroTimerEvent, PomodoroTimerState> {
  PomodoroTimerBloc({
    required PomodoroConfigRepository configRepository,
  })  : _configRepository = configRepository,
        super(const PomodoroTimerState()) {
    on<_Played>(_onPlayed);
    on<_Paused>(_onPaused);
    on<_ResetRequested>(_onResetRequested);
    on<_SelectedDurationUpdated>(_onSelectedDurationUpdated);
    on<_BreakSkipped>(_onBreakSkipped);
    on<_ElapsedDurationUpdated>(_onElapsedDurationUpdated);
  }

  final PomodoroConfigRepository _configRepository;

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

  FutureOr<void> _onPlayed(
    _Played event,
    Emitter<PomodoroTimerState> emit,
  ) async {
    _timer = Timer.periodic(
      const Duration(
        // seconds: 1,
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
  ) async {
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
    final config = await _configRepository.getConfig();
    final mode = state.mode;
    final isBreak = mode == PomodoroTimerMode.longBreak ||
        mode == PomodoroTimerMode.shortBreak;
    final workCount = _computeWorkCountFromMode(mode);

    emit(
      state.copyWith(
        status: isBreak
            ? PomodoroTimerStatus.finished
            : PomodoroTimerStatus.finishedBreak,
        workCount: workCount,
      ),
    );

    final isShortBreakNext =
        isSessionFinished && state.workCount == 2 && !isBreak;
    final isLongBreakNext =
        isSessionFinished && state.workCount >= config.longBreakInterval;

    if (isLongBreakNext) {
      emit(
        state.copyWith(
          elapsedDuration: Duration.zero,
          selectedDuration: Duration(
            minutes: config.longBreakDuration,
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
            minutes: config.shortBreakDuration,
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
          minutes: config.pomodoroDuration,
        ),
        mode: PomodoroTimerMode.work,
      ),
    );
  }

  FutureOr<void> _onBreakSkipped(
    _BreakSkipped event,
    Emitter<PomodoroTimerState> emit,
  ) async {
    _timer?.cancel();
    final config = await _configRepository.getConfig();

    emit(
      state.copyWith(
        elapsedDuration: Duration.zero,
        status: PomodoroTimerStatus.finishedBreak,
        mode: PomodoroTimerMode.work,
        workCount:
            state.mode == PomodoroTimerMode.longBreak ? 0 : state.workCount,
        selectedDuration: Duration(
          minutes: config.pomodoroDuration,
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

  FutureOr<void> _onSelectedDurationUpdated(
    _SelectedDurationUpdated event,
    Emitter<PomodoroTimerState> emit,
  ) {
    emit(
      state.copyWith(
        selectedDuration: event.selectedDuration,
      ),
    );
  }
}
