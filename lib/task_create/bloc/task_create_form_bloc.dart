import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:task_api/task_api.dart';
import 'package:task_repository/task_repository.dart';

part 'task_create_form_event.dart';
part 'task_create_form_state.dart';
part 'task_create_form_bloc.freezed.dart';

FormGroup _buildForm() {
  return fb.group(
    {
      'title': FormControl<String>(
        validators: [Validators.required],
      ),
      'description': FormControl<String>(
        validators: [Validators.required],
      ),
      'pomodoroCount': FormControl<double>(
        validators: [
          Validators.required,
          Validators.min(1),
        ],
      ),
    },
  );
}

class TaskCreateFormBloc
    extends Bloc<TaskCreateFormEvent, TaskCreateFormState> {
  TaskCreateFormBloc({
    required TaskRepository taskRepository,
  })  : _taskRepository = taskRepository,
        super(TaskCreateFormState(_buildForm())) {
    on<_Submitted>(_onSubmitted);
  }

  final TaskRepository _taskRepository;

  FutureOr<void> _onSubmitted(
    _Submitted event,
    Emitter<TaskCreateFormState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          status: TaskCreateFormStatus.loading,
        ),
      );
      final form = state.form;
      final values = form.value;

      final title = values['title'] as String? ?? '';
      final description = values['description'] as String? ?? '';
      final pomodoroCount = values['pomodoroCount'] as double? ?? 0;

      await _taskRepository.saveTask(
        Task(
          content: description,
          isCompleted: false,
          title: title,
          totalPomodoroCount: pomodoroCount.toInt(),
          pomodoroCount: 0,
        ),
      );
      emit(
        state.copyWith(
          status: TaskCreateFormStatus.success,
        ),
      );
    } catch (e) {
      log(e.toString());
      emit(
        state.copyWith(
          status: TaskCreateFormStatus.failure,
        ),
      );
    }
  }
}
