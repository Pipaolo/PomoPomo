import 'package:task_api/src/models/models.dart';

/// {@template task_api}
/// The interface for an API that provides access to a list of tasks
/// {@endtemplate}
abstract class TaskApi {
  /// {@macro task_api}
  const TaskApi();

  /// Provides a [Stream] of all tasks
  Stream<List<Task>> getTasks();

  /// Saves a [Task].
  ///
  /// If a [Task] with the same id already exists, it will be replaced.
  Future<void> saveTask(Task task);

  /// Deletes a [Task].
  ///
  /// If no task with the given id exists, a [TaskNotFoundException] is thrown.
  Future<void> deleteTask(int id);

  /// Deletes all completed tasks
  ///
  /// Returns the number of deleted tasks
  Future<int> clearCompleted();

  /// Increments all tasks' pomodoro count
  ///
  /// Returns the number of tasks that were incremented
  Future<int> incrementAllPomodoroCount();
}

/// Error thrown when a [Task] with a given id is not found.
class TaskNotFoundException implements Exception {}
