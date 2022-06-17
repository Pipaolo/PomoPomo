import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

/// TaskPriority
enum TaskPriority {
  /// low
  low,

  /// medium
  medium,

  /// high
  high,
}

/// Task model
@freezed
class Task with _$Task {
  /// {@macro task}
  const factory Task({
    int? id,
    required String title,
    required String content,
    @Default(TaskPriority.low) TaskPriority priority,
    @Default(1) int totalPomodoroCount,
    @Default(0) int pomodoroCount,
    required bool isCompleted,
  }) = _Task;

  /// fromJson
  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}
