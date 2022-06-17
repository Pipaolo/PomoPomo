import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';
import 'package:task_api/task_api.dart';

class TaskListItem extends StatelessWidget {
  const TaskListItem({
    super.key,
    required this.task,
  });

  final Task task;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
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
            _PomodoroProgress(
              completedPomodoros: task.pomodoroCount,
              totalPomodoros: 24,
              padding: const EdgeInsets.only(
                right: PomoPomoSpacings.spacing2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PomodoroProgress extends StatelessWidget {
  const _PomodoroProgress({
    this.completedPomodoros = 1,
    this.totalPomodoros = 4,
    this.iconSize = 22,
    this.padding = EdgeInsets.zero,
  });
  final int totalPomodoros;
  final int completedPomodoros;

  final double iconSize;
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
