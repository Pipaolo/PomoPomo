part of 'task_list_bloc.dart';

enum TaskListStatus { initial, loading, success, failure }

@freezed
class TaskListState with _$TaskListState {
  const factory TaskListState({
    @Default(TaskListStatus.initial) TaskListStatus status,
    @Default(<Task>[]) List<Task> tasks,
    @Default(<Task>[]) List<Task> completedTasks,
  }) = _TaskListState;
}
