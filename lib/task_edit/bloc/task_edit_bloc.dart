import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:task_api/task_api.dart';
import 'package:task_repository/task_repository.dart';

part 'task_edit_event.dart';
part 'task_edit_state.dart';
part 'task_edit_bloc.freezed.dart';

FormGroup _buildForm(Task task) {
  return fb.group({
    'title': FormControl<String>(
      value: task.title,
      validators: [Validators.required],
    ),
    'content': FormControl<String>(
      value: task.content,
      validators: [Validators.required],
    ),
    'pomodoroCount': FormControl<double>(
      value: task.totalPomodoroCount.toDouble(),
      validators: [
        Validators.required,
        Validators.min(1),
      ],
    ),
  });
}

class TaskEditBloc extends Bloc<TaskEditEvent, TaskEditState> {
  TaskEditBloc({
    required TaskRepository taskRepository,
  })  : _taskRepository = taskRepository,
        super(
          const _TaskEditState(),
        ) {
    on<_InitialTaskLoaded>(_onInitialTaskLoaded);
    on<_Submitted>(_onSubmitted);
  }
  final TaskRepository _taskRepository;

  FutureOr<void> _onSubmitted(
    _Submitted event,
    Emitter<TaskEditState> emit,
  ) async {
    try {
      final form = state.form;
      if (form == null) return null;
      if (state.initialTask == null) return null;

      emit(
        state.copyWith(
          status: TaskEditStatus.loading,
        ),
      );
      final values = form.value;

      final title = values['title'] as String? ?? '';
      final content = values['content'] as String? ?? '';
      final pomodoroCount = values['pomodoroCount'] as double? ?? 0;
      final initialTask = state.initialTask!;
      final updatedTask = initialTask.copyWith(
        title: title,
        content: content,
        totalPomodoroCount: pomodoroCount.toInt(),
        isCompleted: pomodoroCount == initialTask.pomodoroCount,
      );
      await _taskRepository.saveTask(
        updatedTask,
      );

      emit(
        state.copyWith(
          status: TaskEditStatus.success,
        ),
      );
    } catch (e) {
      log(e.toString());
      emit(
        state.copyWith(
          status: TaskEditStatus.failure,
        ),
      );
    }
  }

  FutureOr<void> _onInitialTaskLoaded(
    _InitialTaskLoaded event,
    Emitter<TaskEditState> emit,
  ) async {
    try {
      final initialTask = await _taskRepository.getTask(event.id!);
      emit(
        state.copyWith(
          status: TaskEditStatus.success,
          initialTask: initialTask,
          form: _buildForm(initialTask),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: TaskEditStatus.failure,
        ),
      );
    }
  }
}
