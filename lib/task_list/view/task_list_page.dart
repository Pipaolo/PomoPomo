import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomo_pomo/task_list/bloc/task_list_bloc.dart';
import 'package:pomo_pomo/task_list/view/task_list_create_task_button.dart';
import 'package:pomo_pomo/task_list/view/task_list_item.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';
import 'package:task_repository/task_repository.dart';

class TaskListPage extends StatelessWidget implements AutoRouteWrapper {
  const TaskListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Tasks',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: BlocBuilder<TaskListBloc, TaskListState>(
        builder: (context, state) {
          final tasks = state.tasks;

          if (tasks.isEmpty) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: PomoPomoSpacings.spacing8,
                ),
                child: Text(
                  'You currently have no tasks, start creating now!',
                  textAlign: TextAlign.center,
                ),
              ),
            );
          }
          return ListView.builder(
            itemCount: tasks.length,
            padding: const EdgeInsets.symmetric(
              horizontal: PomoPomoSpacings.spacing4,
            ),
            itemBuilder: (context, i) {
              final task = tasks[i];
              return TaskListItem(task: task);
            },
          );
        },
      ),
      bottomNavigationBar: const TaskListCreateTaskButton(),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskListBloc(
        taskRepository: context.read<TaskRepository>(),
      )..add(
          const TaskListEvent.subscriptionRequested(),
        ),
      child: this,
    );
  }
}
