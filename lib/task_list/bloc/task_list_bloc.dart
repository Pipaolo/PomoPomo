import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pomo_pomo/task_list/models/task_list_view_filter.dart';
import 'package:task_api/task_api.dart';
import 'package:task_repository/task_repository.dart';

part 'task_list_event.dart';
part 'task_list_state.dart';
part 'task_list_bloc.freezed.dart';

class TaskListBloc extends Bloc<TaskListEvent, TaskListState> {
  TaskListBloc({required TaskRepository taskRepository})
      : _taskRepository = taskRepository,
        super(const _TaskListState()) {
    on<_SubscriptionRequested>(_onSubscriptionRequested);
    on<_TaskMarkAsCompleted>(_onTaskMarkAsCompleted);
    on<_TaskDeleted>(_onTaskDeleted);
    on<_UndoDeletionRequested>(_onUndoDeletionRequested);
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
        tasks: tasks.where(TaskListViewFilter.uncompletedOnly.apply).toList(),
        completedTasks:
            tasks.where(TaskListViewFilter.completedOnly.apply).toList(),
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
      final result = await _taskRepository.incrementAllPomodoroCount();
      log('Changed tasks: $result');
    } catch (e) {
      log('Failed to increment all tasks pomodoro count: $e');
    }
  }

  FutureOr<void> _onTaskMarkAsCompleted(
    _TaskMarkAsCompleted event,
    Emitter<TaskListState> emit,
  ) async {
    final task = event.task;
    await _taskRepository.saveTask(
      task.copyWith(
        pomodoroCount: task.totalPomodoroCount,
        isCompleted: true,
      ),
    );
  }

  FutureOr<void> _onTaskDeleted(
    _TaskDeleted event,
    Emitter<TaskListState> emit,
  ) async {
    emit(
      state.copyWith(
        lastDeletedTask: event.task,
      ),
    );
    await _taskRepository.deleteTodo(event.task.id!);
  }

  FutureOr<void> _onUndoDeletionRequested(
    _UndoDeletionRequested event,
    Emitter<TaskListState> emit,
  ) async {
    assert(state.lastDeletedTask != null, 'Last deleted task can not be null.');
    final task = state.lastDeletedTask!;
    emit(
      state.copyWith(
        lastDeletedTask: null,
      ),
    );

    await _taskRepository.saveTask(task);
  }
}
