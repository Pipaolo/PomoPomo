part of 'task_list_bloc.dart';

@freezed
class TaskListEvent with _$TaskListEvent {
  const factory TaskListEvent.started() = _Started;
  const factory TaskListEvent.taskMarkAsCompleted(Task task) =
      _TaskMarkAsCompleted;
  const factory TaskListEvent.taskDeleted(Task task) = _TaskDeleted;
  const factory TaskListEvent.allTasksIncremented() = _AllTasksIncremented;
  const factory TaskListEvent.subscriptionRequested() = _SubscriptionRequested;
}
