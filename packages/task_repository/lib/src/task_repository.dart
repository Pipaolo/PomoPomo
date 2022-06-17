import 'package:task_api/task_api.dart';

/// {@template task_repository}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class TaskRepository {
  /// {@macro task_repository}
  const TaskRepository({
    required TaskApi taskApi,
  }) : _taskApi = taskApi;

  final TaskApi _taskApi;

  /// Provides a [Stream] of [Task]s.
  Stream<List<Task>> getTasks() => _taskApi.getTasks();

  /// Saves a [Task]
  ///
  /// If a [Task] with the same id already exists, it will be updated.
  Future<void> saveTask(Task task) => _taskApi.saveTask(task);

  /// Deletes the todo with the given id.
  Future<void> deleteTodo(int id) => _taskApi.deleteTask(id);

  /// Deletes all completed todos.
  ///
  /// Returns the number of deleted todos.
  Future<int> clearCompleted() => _taskApi.clearCompleted();

  /// Increments all tasks' pomodoro count.
  ///
  /// Returns the number of tasks that were incremented.
  Future<int> incrementAllPomodoroCount() =>
      _taskApi.incrementAllPomodoroCount();
}
