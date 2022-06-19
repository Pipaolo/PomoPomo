part of 'task_edit_bloc.dart';

@freezed
class TaskEditEvent with _$TaskEditEvent {
  const factory TaskEditEvent.initialTaskLoaded(int? id) = _InitialTaskLoaded;
  const factory TaskEditEvent.submitted() = _Submitted;
}
