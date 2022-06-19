import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomo_pomo/router/app_router.dart';
import 'package:pomo_pomo/task_list/bloc/task_list_bloc.dart';
import 'package:pomo_pomo/task_list/widgets/widgets.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';
import 'package:task_api/task_api.dart';
import 'package:task_repository/task_repository.dart';

class TaskListPage extends StatelessWidget implements AutoRouteWrapper {
  const TaskListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<TaskListBloc, TaskListState>(
      listenWhen: (curr, prev) => curr.lastDeletedTask != prev.lastDeletedTask,
      listener: (context, state) {
        if (state.lastDeletedTask == null) return;
        final deletedTask = state.lastDeletedTask!;
        final messenger = ScaffoldMessenger.of(context);

        messenger
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              content: Text('Task ${deletedTask.title} has been deleted.'),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  messenger.hideCurrentSnackBar();
                  context
                      .read<TaskListBloc>()
                      .add(const TaskListEvent.undoDeletionRequested());
                },
              ),
            ),
          );
      },
      child: Scaffold(
        body: BlocBuilder<TaskListBloc, TaskListState>(
          builder: (context, state) {
            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  centerTitle: true,
                  elevation: 0,
                  pinned: true,
                  title: Text(
                    'Tasks',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                if (state.tasks.isEmpty && state.completedTasks.isEmpty)
                  const SliverFillRemaining(
                    child: TaskListEmpty(),
                  ),
                if (state.tasks.isNotEmpty)
                  _InProgressTaskList(tasks: state.tasks),
                if (state.completedTasks.isNotEmpty)
                  _CompletedTaskList(tasks: state.completedTasks)
                // if (tasks.isEmpty)
              ],
            );
          },
        ),
        bottomNavigationBar: const TaskListCreateTaskButton(),
      ),
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

class _InProgressTaskList extends StatelessWidget {
  const _InProgressTaskList({
    required this.tasks,
  });
  final List<Task> tasks;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(PomoPomoSpacings.spacing4),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, i) {
            final task = tasks[i];
            return TaskListItem(
              task: task,
              onCompletePressed: () {
                context.read<TaskListBloc>().add(
                      TaskListEvent.taskMarkAsCompleted(task),
                    );
              },
              onDeletePressed: () {
                context.read<TaskListBloc>().add(
                      TaskListEvent.taskDeleted(task),
                    );
              },
              onPressed: () {
                AutoRouter.of(context).push(
                  TaskEditRoute(task: task),
                );
              },
            );
          },
          childCount: tasks.length,
        ),
      ),
    );
  }
}

class _CompletedTaskList extends StatelessWidget {
  const _CompletedTaskList({
    required this.tasks,
  });
  final List<Task> tasks;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(
        horizontal: PomoPomoSpacings.spacing4,
      ),
      sliver: SliverList(
        delegate: SliverChildListDelegate.fixed(
          [
            Text(
              'Completed',
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            PomoPomoSpacers.vSpacing4,
            ...tasks.map(
              (task) => TaskListItem(
                task: task,
                onCompletePressed: () {},
                onDeletePressed: () {
                  context.read<TaskListBloc>().add(
                        TaskListEvent.taskDeleted(task),
                      );
                },
                onPressed: () => AutoRouter.of(context).push(
                  TaskEditRoute(task: task),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
