// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PomodoroConfig _$$_PomodoroConfigFromJson(Map<String, dynamic> json) =>
    _$_PomodoroConfig(
      pomodoroCountBeforeLongBreak:
          (json['pomodoroCountBeforeLongBreak'] as num).toDouble(),
      pomodoroDurationInMinutes:
          (json['pomodoroDurationInMinutes'] as num).toDouble(),
      longBreakDurationInMinutes:
          (json['longBreakDurationInMinutes'] as num).toDouble(),
      shortBreakDurationInMinutes:
          (json['shortBreakDurationInMinutes'] as num).toDouble(),
      isAutoStartBreak: json['isAutoStartBreak'] as bool? ?? false,
      isAutoStartPomodoro: json['isAutoStartPomodoro'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PomodoroConfigToJson(_$_PomodoroConfig instance) =>
    <String, dynamic>{
      'pomodoroCountBeforeLongBreak': instance.pomodoroCountBeforeLongBreak,
      'pomodoroDurationInMinutes': instance.pomodoroDurationInMinutes,
      'longBreakDurationInMinutes': instance.longBreakDurationInMinutes,
      'shortBreakDurationInMinutes': instance.shortBreakDurationInMinutes,
      'isAutoStartBreak': instance.isAutoStartBreak,
      'isAutoStartPomodoro': instance.isAutoStartPomodoro,
    };
