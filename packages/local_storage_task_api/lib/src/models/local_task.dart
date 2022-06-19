import 'package:isar/isar.dart';
import 'package:task_api/task_api.dart';

part 'local_task.g.dart';

/// LocalTask
@Collection()
class LocalTask {
  @Id()

  /// id
  int? id;

  /// title
  late String title;

  /// content
  late String content;

  ///  pomodoroCount
  late int pomodoroCount;

  /// totalPomodoroCount
  late int totalPomodoroCount;

  ///  isCompleted
  late bool isCompleted;

  /// Converts a [LocalTask] to a [Task].
  Task toTask() {
    return Task(
      id: id,
      title: title,
      content: content,
      totalPomodoroCount: totalPomodoroCount,
      pomodoroCount: pomodoroCount,
      isCompleted: isCompleted,
    );
  }
}
