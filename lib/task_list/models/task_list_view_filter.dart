import 'package:task_api/task_api.dart';

enum TaskListViewFilter { all, completedOnly, uncompletedOnly }

extension TaskListViewFilterX on TaskListViewFilter {
  bool apply(Task task) {
    switch (this) {
      case TaskListViewFilter.all:
        return true;
      case TaskListViewFilter.completedOnly:
        return task.isCompleted;
      case TaskListViewFilter.uncompletedOnly:
        return !task.isCompleted;
    }
  }

  Iterable<Task> applyAll(Iterable<Task> task) => task.where(apply);
}
