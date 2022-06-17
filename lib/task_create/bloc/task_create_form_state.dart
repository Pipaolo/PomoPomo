part of 'task_create_form_bloc.dart';

enum TaskCreateFormStatus { initial, loading, success, failure }

@freezed
class TaskCreateFormState with _$TaskCreateFormState {
  factory TaskCreateFormState(
    FormGroup form, {
    @Default(TaskCreateFormStatus.initial) TaskCreateFormStatus status,
  }) = _TaskCreateForm;
}
