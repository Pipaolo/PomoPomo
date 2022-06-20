import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomo_pomo/task_list/models/models.dart';
import 'package:pomo_pomo/tutorial/cubit/tutorial_cubit.dart';
import 'package:pomo_pomo/widgets/showcase/showcase.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:task_api/task_api.dart';

class TaskListItem extends StatefulWidget {
  const TaskListItem({
    super.key,
    required this.task,
    required this.onPressed,
    required this.onCompletePressed,
    required this.onDeletePressed,
    this.tutorialItem,
  });

  final TaskListViewTutorialItem? tutorialItem;
  final Task task;

  final VoidCallback onPressed;
  final VoidCallback onCompletePressed;
  final VoidCallback onDeletePressed;

  static final _borderRadius = BorderRadius.circular(12);

  static const _tutorialTaskListItemDescription = '''
This contains all information about a task. 📋

- You can swipe left to right to complete the task.
- You can swipe right to left to delete the task.
''';

  static const _tutorialTaskListProgress = '''
Track your pomodoro progress. 📊

Keep being productive! 💪
  ''';

  @override
  State<TaskListItem> createState() => _TaskListItemState();
}

class _TaskListItemState extends State<TaskListItem> {
  bool _isTutorialAnimationRunning = false;

  Future<void> _delay() {
    return Future.delayed(const Duration(milliseconds: 800));
  }

  Future<void> _showLeftAndRightGestureTutorial(
    BuildContext context,
  ) async {
    final slidable = Slidable.of(context);

    if (slidable == null) return;
    setState(() {
      _isTutorialAnimationRunning = true;
    });
    await slidable.openEndActionPane();
    await _delay();
    await slidable.close();
    await _delay();
    await slidable.openStartActionPane();
    await _delay();
    await slidable.close();

    setState(() {
      _isTutorialAnimationRunning = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ShowcaseWidgetWrapper(
      showCaseKey: widget.tutorialItem?.parentKey,
      description: TaskListItem._tutorialTaskListItemDescription,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: TaskListItem._borderRadius,
        ),
        child: Slidable(
          startActionPane: _buildCompleteAction(context),
          endActionPane: _buildRemoveAction(context),
          child: BlocListener<TutorialTaskListCubit, TutorialState>(
            listener: (context, state) {
              state.maybeWhen(
                ongoing: (activeId) {
                  final showCaseWidget = ShowCaseWidget.of(context);
                  final activeKey = showCaseWidget?.ids?[activeId];
                  if (activeKey == null) return;

                  if (activeKey == widget.tutorialItem?.parentKey) {
                    if (_isTutorialAnimationRunning) return;
                    _showLeftAndRightGestureTutorial(
                      context,
                    );
                  } else if (_isTutorialAnimationRunning) {
                    showCaseWidget?.previous();
                  }
                },
                orElse: () {},
              );
            },
            child: InkWell(
              onTap: widget.onPressed,
              borderRadius: TaskListItem._borderRadius,
              child: Padding(
                padding: const EdgeInsets.all(PomoPomoSpacings.spacing4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.task.title,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const Divider(
                      height: PomoPomoSpacings.spacing4 * 2,
                    ),
                    Text(
                      widget.task.content,
                      style: GoogleFonts.inter(
                        fontSize: 14,
                      ),
                    ),
                    PomoPomoSpacers.vSpacing4,
                    ShowcaseWidgetWrapper(
                      showCaseKey: widget.tutorialItem?.progressKey,
                      description: TaskListItem._tutorialTaskListProgress,
                      child: _PomodoroProgress(
                        completedPomodoros: widget.task.pomodoroCount,
                        totalPomodoros: widget.task.totalPomodoroCount,
                        padding: const EdgeInsets.only(
                          right: PomoPomoSpacings.spacing2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  ActionPane? _buildCompleteAction(BuildContext context) {
    if (widget.task.isCompleted) return null;
    final colorScheme = Theme.of(context).colorScheme;
    return ActionPane(
      motion: const StretchMotion(),
      dragDismissible: false,
      children: [
        SlidableAction(
          label: 'Complete',
          icon: FontAwesomeIcons.check,
          spacing: PomoPomoSpacings.spacing4,
          onPressed: (context) => widget.onCompletePressed.call(),
          foregroundColor: colorScheme.onSurfaceVariant,
          backgroundColor: colorScheme.surfaceVariant,
          borderRadius: TaskListItem._borderRadius,
        ),
      ],
    );
  }

  ActionPane _buildRemoveAction(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return ActionPane(
      motion: const StretchMotion(),
      children: [
        SlidableAction(
          label: 'Remove',
          icon: FontAwesomeIcons.trash,
          spacing: PomoPomoSpacings.spacing4,
          onPressed: (context) => widget.onDeletePressed.call(),
          foregroundColor: colorScheme.onSurfaceVariant,
          backgroundColor: colorScheme.surfaceVariant,
          borderRadius: TaskListItem._borderRadius,
        ),
      ],
    );
  }
}

class _PomodoroProgress extends StatelessWidget {
  const _PomodoroProgress({
    this.completedPomodoros = 1,
    this.totalPomodoros = 4,
    this.padding = EdgeInsets.zero,
  });
  final int totalPomodoros;
  final int completedPomodoros;

  static const double iconSize = 22;
  final EdgeInsets padding;

  Widget _buildIcon(
    BuildContext context, {
    required bool isActive,
  }) {
    final color =
        isActive ? Theme.of(context).colorScheme.onSurface : Colors.grey;
    return Padding(
      padding: padding,
      child: Icon(
        FontAwesomeIcons.stopwatch,
        size: iconSize,
        color: color,
      ),
    );
  }

  List<Widget> _buildPomodoroIcons(BuildContext context) {
    final finishedIcons = List.generate(
      completedPomodoros,
      (_) => _buildIcon(context, isActive: true),
    );

    final unfinishedIcons = List.generate(
      totalPomodoros - completedPomodoros,
      (_) => _buildIcon(context, isActive: false),
    );
    return [...finishedIcons, ...unfinishedIcons];
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: PomoPomoSpacings.spacing3,
      children: _buildPomodoroIcons(context),
    );
  }
}
