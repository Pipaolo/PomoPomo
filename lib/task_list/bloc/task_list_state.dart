part of 'task_list_bloc.dart';

enum TaskListStatus { initial, loading, success, failure }

@Freezed(equal: false)
class TaskListState with _$TaskListState {
  const factory TaskListState({
    @Default(TaskListStatus.initial) TaskListStatus status,
    @Default(<Task>[]) List<Task> tasks,
    @Default(<Task>[]) List<Task> completedTasks,
    Task? lastDeletedTask,
  }) = _TaskListState;
}
