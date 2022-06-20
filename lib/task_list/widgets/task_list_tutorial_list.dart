import 'package:flutter/material.dart';
import 'package:pomo_pomo/task_list/models/task_list_view_tutorial_item.dart';
import 'package:pomo_pomo/task_list/widgets/task_list_item.dart';
import 'package:pomo_pomo/widgets/showcase/showcase.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';
import 'package:task_api/task_api.dart';

class TaskListTutorialList extends StatelessWidget {
  const TaskListTutorialList({
    super.key,
    required this.inProgressTutorialItem,
    required this.completedTutorialItem,
  });

  final TaskListViewTutorialItem inProgressTutorialItem;
  final TaskListViewTutorialItem completedTutorialItem;

  /// This will be used for generating the showcase widget.
  static const _tutorialTask = Task(
    pomodoroCount: 3,
    totalPomodoroCount: 6,
    title: 'Be productive',
    content: 'I would to be productive!',
  );
  static const _tutorialCompletedTask = Task(
    pomodoroCount: 6,
    totalPomodoroCount: 6,
    title: 'Be productive',
    content: 'I would to be productive!',
  );

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Column(
        children: [
          ShowCaseWidgetWrapper(
            showCaseKey: inProgressTutorialItem.containerKey,
            description: 'This contains all in progress tasks',
            child: Column(
              children: [
                TaskListItem(
                  task: _tutorialTask,
                  tutorialItem: inProgressTutorialItem,
                  onPressed: () {},
                  onCompletePressed: () {},
                  onDeletePressed: () {},
                ),
                TaskListItem(
                  task: _tutorialTask,
                  onPressed: () {},
                  onCompletePressed: () {},
                  onDeletePressed: () {},
                ),
              ],
            ),
          ),
          PomoPomoSpacers.vSpacing4,
          ShowCaseWidgetWrapper(
            showCaseKey: completedTutorialItem.containerKey,
            description: 'This contains all completed tasks',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Completed',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                PomoPomoSpacers.vSpacing4,
                TaskListItem(
                  task: _tutorialCompletedTask,
                  tutorialItem: completedTutorialItem,
                  onPressed: () {},
                  onCompletePressed: () {},
                  onDeletePressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
