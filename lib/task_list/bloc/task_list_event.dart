part of 'task_list_bloc.dart';

@freezed
class TaskListEvent with _$TaskListEvent {
  const factory TaskListEvent.started() = _Started;
  const factory TaskListEvent.allTasksIncremented() = _AllTasksIncremented;
  const factory TaskListEvent.subscriptionRequested() = _SubscriptionRequested;
}
