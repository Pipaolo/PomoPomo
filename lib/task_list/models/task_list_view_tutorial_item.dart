import 'package:flutter/widgets.dart';

/// This class is used for creating a tutorial widget for the user.
class TaskListViewTutorialItem {
  TaskListViewTutorialItem();

  final GlobalKey containerKey = GlobalKey(debugLabel: 'task-list-container');
  final GlobalKey parentKey = GlobalKey(debugLabel: 'task-list-parent');

  final GlobalKey progressKey = GlobalKey(debugLabel: 'task-list-progress');

  List<GlobalKey> get allKeys => [
        containerKey,
        parentKey,
        progressKey,
      ];
}
