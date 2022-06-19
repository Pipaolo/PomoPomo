part of 'task_create_form_bloc.dart';

@freezed
class TaskCreateFormEvent with _$TaskCreateFormEvent {
  const factory TaskCreateFormEvent.changed(List<dynamic> deltaJson) = _Changed;
  const factory TaskCreateFormEvent.submitted() = _Submitted;
}
