import 'package:isar/isar.dart';
import 'package:local_storage_task_api/src/models/models.dart';
import 'package:rxdart/rxdart.dart';
import 'package:task_api/task_api.dart';

/// {@template local_storage_task_api}
/// A Isar implementation of the [TaskApi] that uses local storage
/// {@endtemplate}
class LocalStorageTaskApi extends TaskApi {
  /// {@macro local_storage_task_api}
  LocalStorageTaskApi();

  late final Isar _isar;

  final _taskStreamController = BehaviorSubject<List<Task>>.seeded(const []);

  /// Initializes the [LocalStorageTaskApi] with the given [Isar] instance.
  Future<void> init(String path) async {
    _isar = Isar.openSync(
      schemas: [LocalTaskSchema],
      directory: path,
      inspector: true,
    );
    await _getTasks();
  }

  Future<void> _getTasks() async {
    final tasks = _isar.localTasks.where().findAllSync();
    _taskStreamController.add(tasks.map((e) => e.toTask()).toList());
  }

  @override
  Future<int> clearCompleted() async {
    var deletedCount = 0;
    await _isar.writeTxn((isar) async {
      final completedTasksIds = await isar.localTasks
          .filter()
          .isCompletedEqualTo(true)
          .idProperty()
          .findAll();
      deletedCount = completedTasksIds.length;

      await isar.localTasks.deleteAll(completedTasksIds as List<int>);
    });
    await _getTasks();
    return deletedCount;
  }

  @override
  Future<void> deleteTask(int id) async {
    await _isar.localTasks.delete(id);

    await _getTasks();
  }

  @override
  Stream<List<Task>> getTasks() {
    return _taskStreamController.asBroadcastStream();
  }

  @override
  Future<void> saveTask(Task task) async {
    LocalTask? localTask;

    if (task.id != null) {
      localTask = await _isar.localTasks.get(task.id!);
    }

    localTask ??= task.toLocalTask();

    await _isar.writeTxn((isar) async {
      await isar.localTasks.put(localTask!);
    });

    await _getTasks();
  }

  @override
  Future<int> incrementAllPomodoroCount() async {
    var count = 0;

    await _isar.writeTxn((isar) async {
      final tasks =
          await isar.localTasks.filter().isCompletedEqualTo(false).findAll();

      for (final task in tasks) {
        task.pomodoroCount++;
        task.isCompleted = task.pomodoroCount >= task.totalPomodoroCount;

        await isar.localTasks.put(task);
        count++;
      }
    });

    await _getTasks();
    return count;
  }
}
