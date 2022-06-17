import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomo_pomo/task_create/bloc/task_create_form_bloc.dart';
import 'package:pomo_pomo/task_create/view/task_create_form.dart';
import 'package:pomo_pomo/task_create/view/task_create_submit_button.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:task_repository/task_repository.dart';

class TaskCreatePage extends StatelessWidget implements AutoRouteWrapper {
  const TaskCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    final form = context.select((TaskCreateFormBloc b) => b.state.form);

    return BlocListener<TaskCreateFormBloc, TaskCreateFormState>(
      listener: (context, state) {
        final status = state.status;

        switch (status) {
          case TaskCreateFormStatus.initial:
            break;
          case TaskCreateFormStatus.loading:
            break;
          case TaskCreateFormStatus.success:
            AutoRouter.of(context).pop();
            break;
          case TaskCreateFormStatus.failure:
            log('Failed to create task');
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
              'Create Task',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Container(
            padding: const EdgeInsets.all(
              PomoPomoSpacings.spacing4,
            ),
            child: const TaskCreateForm(),
          ),
          bottomNavigationBar: const TaskCreateSubmitButton(),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskCreateFormBloc(
        taskRepository: context.read<TaskRepository>(),
      ),
      child: this,
    );
  }
}
