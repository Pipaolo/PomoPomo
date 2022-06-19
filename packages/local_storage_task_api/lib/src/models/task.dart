import 'package:local_storage_task_api/src/models/local_task.dart';
import 'package:task_api/task_api.dart';

/// Task Extensions
extension TaskX on Task {
  /// Converts a [Task] to a [LocalTask].
  LocalTask toLocalTask() {
    return LocalTask()
      ..id = id
      ..content = content
      ..title = title
      ..isCompleted = isCompleted
      ..totalPomodoroCount = totalPomodoroCount
      ..pomodoroCount = pomodoroCount;
  }
}
