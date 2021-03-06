import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomo_pomo/router/app_router.dart';
import 'package:pomo_pomo/task_list/bloc/task_list_bloc.dart';
import 'package:pomo_pomo/task_list/models/models.dart';
import 'package:pomo_pomo/task_list/widgets/task_list_tutorial_list.dart';
import 'package:pomo_pomo/task_list/widgets/widgets.dart';
import 'package:pomo_pomo/tutorial/tutorial.dart';
import 'package:pomo_pomo/widgets/showcase/showcase.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:task_api/task_api.dart';

class TaskListPage extends StatefulWidget implements AutoRouteWrapper {
  const TaskListPage({super.key});

  @override
  State<TaskListPage> createState() => _TaskListPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TutorialTaskListCubit(),
        ),
      ],
      child: this,
    );
  }
}

class _TaskListPageState extends State<TaskListPage> {
  BuildContext? _showCaseContext;

  static final _inProgressTaskTutorial = TaskListViewTutorialItem();
  static final _completedTaskTutorial = TaskListViewTutorialItem();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        if (_showCaseContext == null) return;

        context.read<TutorialTaskListCubit>().state.maybeWhen(
              initial: () {
                final keys = [
                  ..._inProgressTaskTutorial.allKeys,
                  _completedTaskTutorial.containerKey,
                ];
                ShowCaseWidget.of(_showCaseContext!)?.startShowCase(
                  keys,
                );
              },
              orElse: () {},
            );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final isTutorialFinished = context.select(
      (TutorialTaskListCubit b) => b.state.map(
        initial: (_) => false,
        ongoing: (_) => false,
        finished: (_) => true,
      ),
    );

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
      child: ShowcaseBuilderWrapper(
        onStart: (id, _) {
          if (id == null) return;
          context.read<TutorialTaskListCubit>().stepUpdated(id);
        },
        onFinish: () async {
          context.read<TutorialTaskListCubit>().finished();
        },
        builder: (context) {
          _showCaseContext = context;
          return Scaffold(
            body: BlocBuilder<TaskListBloc, TaskListState>(
              builder: (context, state) {
                final appBar = SliverAppBar(
                  centerTitle: true,
                  elevation: 0,
                  pinned: true,
                  title: Text(
                    'Tasks',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );

                if (!isTutorialFinished) {
                  return CustomScrollView(
                    slivers: [
                      appBar,
                      TaskListTutorialList(
                        inProgressTutorialItem: _inProgressTaskTutorial,
                        completedTutorialItem: _completedTaskTutorial,
                      ),
                    ],
                  );
                }
                return CustomScrollView(
                  slivers: [
                    appBar,
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
          );
        },
      ),
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
                  TaskEditRoute(taskId: task.id!),
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
                  TaskEditRoute(taskId: task.id!),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
