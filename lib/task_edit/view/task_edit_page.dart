import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomo_pomo/task_edit/bloc/task_edit_bloc.dart';
import 'package:pomo_pomo/task_edit/task_edit.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:task_api/task_api.dart';
import 'package:task_repository/task_repository.dart';

class TaskEditPage extends StatelessWidget implements AutoRouteWrapper {
  const TaskEditPage({
    super.key,
    required this.task,
  });

  final Task task;

  @override
  Widget build(BuildContext context) {
    final form = context.select((TaskEditBloc b) => b.state.form);

    if (form == null) return const Scaffold();

    return BlocListener<TaskEditBloc, TaskEditState>(
      listener: (context, state) {
        final messenger = ScaffoldMessenger.of(context);
        switch (state.status) {
          case TaskEditStatus.initial:
          case TaskEditStatus.loading:
            break;
          case TaskEditStatus.success:
            messenger.showSnackBar(
              SnackBar(
                content: Text(
                  'You have successfully editted: ${task.title}',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                backgroundColor: Theme.of(context).colorScheme.surface,
              ),
            );
            AutoRouter.of(context).pop();
            break;
          case TaskEditStatus.failure:
            messenger.showSnackBar(
              const SnackBar(
                content: Text('Failed to edit task'),
              ),
            );
            break;
        }
      },
      child: ReactiveForm(
        formGroup: form,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            title: Text(
              'Edit Task',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Container(
            padding: const EdgeInsets.all(
              PomoPomoSpacings.spacing4,
            ),
            child: const TaskEditForm(),
          ),
          bottomNavigationBar: const TaskEditSubmitButton(),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      child: this,
      create: (context) => TaskEditBloc(
        taskRepository: context.read<TaskRepository>(),
        initialTask: task,
      ),
    );
  }
}
