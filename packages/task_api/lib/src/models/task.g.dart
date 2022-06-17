// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Task _$$_TaskFromJson(Map<String, dynamic> json) => _$_Task(
      id: json['id'] as int?,
      title: json['title'] as String,
      content: json['content'] as String,
      priority: $enumDecodeNullable(_$TaskPriorityEnumMap, json['priority']) ??
          TaskPriority.low,
      totalPomodoroCount: json['totalPomodoroCount'] as int? ?? 1,
      pomodoroCount: json['pomodoroCount'] as int? ?? 0,
      isCompleted: json['isCompleted'] as bool,
    );

Map<String, dynamic> _$$_TaskToJson(_$_Task instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'priority': _$TaskPriorityEnumMap[instance.priority],
      'totalPomodoroCount': instance.totalPomodoroCount,
      'pomodoroCount': instance.pomodoroCount,
      'isCompleted': instance.isCompleted,
    };

const _$TaskPriorityEnumMap = {
  TaskPriority.low: 'low',
  TaskPriority.medium: 'medium',
  TaskPriority.high: 'high',
};
