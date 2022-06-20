import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomo_pomo/task_list/models/models.dart';
import 'package:pomo_pomo/widgets/showcase/showcase.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';
import 'package:task_api/task_api.dart';

class TaskListItem extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return ShowCaseWidgetWrapper(
      showCaseKey: tutorialItem?.parentKey,
      description: _tutorialTaskListItemDescription,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: _borderRadius,
        ),
        child: Slidable(
          startActionPane: _buildCompleteAction(context),
          endActionPane: _buildRemoveAction(context),
          child: InkWell(
            onTap: onPressed,
            borderRadius: _borderRadius,
            child: Padding(
              padding: const EdgeInsets.all(PomoPomoSpacings.spacing4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    task.title,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const Divider(
                    height: PomoPomoSpacings.spacing4 * 2,
                  ),
                  Text(
                    task.content,
                    style: GoogleFonts.inter(
                      fontSize: 14,
                    ),
                  ),
                  PomoPomoSpacers.vSpacing4,
                  ShowCaseWidgetWrapper(
                    showCaseKey: tutorialItem?.progressKey,
                    description: _tutorialTaskListProgress,
                    child: _PomodoroProgress(
                      completedPomodoros: task.pomodoroCount,
                      totalPomodoros: task.totalPomodoroCount,
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
    );
  }

  ActionPane? _buildCompleteAction(BuildContext context) {
    if (task.isCompleted) return null;
    final colorScheme = Theme.of(context).colorScheme;
    return ActionPane(
      motion: const StretchMotion(),
      dragDismissible: false,
      children: [
        SlidableAction(
          label: 'Complete',
          icon: FontAwesomeIcons.check,
          spacing: PomoPomoSpacings.spacing4,
          onPressed: (context) => onCompletePressed.call(),
          foregroundColor: colorScheme.onSurfaceVariant,
          backgroundColor: colorScheme.surfaceVariant,
          borderRadius: _borderRadius,
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
          onPressed: (context) => onDeletePressed.call(),
          foregroundColor: colorScheme.onSurfaceVariant,
          backgroundColor: colorScheme.surfaceVariant,
          borderRadius: _borderRadius,
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
