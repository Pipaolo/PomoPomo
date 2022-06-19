part of 'task_edit_bloc.dart';

enum TaskEditStatus { initial, loading, success, failure }

@freezed
class TaskEditState with _$TaskEditState {
  const factory TaskEditState({
    @Default(TaskEditStatus.initial) TaskEditStatus status,
    Task? initialTask,
    FormGroup? form,
  }) = _TaskEditState;
}
