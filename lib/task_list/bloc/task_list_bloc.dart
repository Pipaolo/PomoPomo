import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_api/task_api.dart';
import 'package:task_repository/task_repository.dart';

part 'task_list_event.dart';
part 'task_list_state.dart';
part 'task_list_bloc.freezed.dart';

class TaskListBloc extends Bloc<TaskListEvent, TaskListState> {
  TaskListBloc({required TaskRepository taskRepository})
      : _taskRepository = taskRepository,
        super(const _Initial()) {
    on<_SubscriptionRequested>(_onSubscriptionRequested);
    on<_AllTasksIncremented>(_onAllTasksIncremented);
  }
  final TaskRepository _taskRepository;

  FutureOr<void> _onSubscriptionRequested(
    _SubscriptionRequested event,
    Emitter<TaskListState> emit,
  ) async {
    emit(
      state.copyWith(
        status: TaskListStatus.loading,
      ),
    );
    await emit.forEach<List<Task>>(
      _taskRepository.getTasks(),
      onData: (tasks) => state.copyWith(
        status: TaskListStatus.success,
        tasks: tasks,
      ),
      onError: (_, __) => state.copyWith(
        status: TaskListStatus.failure,
      ),
    );
  }

  FutureOr<void> _onAllTasksIncremented(
    _AllTasksIncremented event,
    Emitter<TaskListState> emit,
  ) async {
    try {
      await _taskRepository.incrementAllPomodoroCount();
    } catch (e) {
      log('Failed to increment all tasks pomodoro count: $e');
    }
  }
}
