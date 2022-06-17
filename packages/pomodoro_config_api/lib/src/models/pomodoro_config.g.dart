// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PomodoroConfig _$$_PomodoroConfigFromJson(Map json) => _$_PomodoroConfig(
      longBreakInterval:
          json['longBreakInterval'] as int? ?? _longBreakInterval,
      pomodoroDuration: json['pomodoroDuration'] as int? ?? _pomodoroDuration,
      shortBreakDuration:
          json['shortBreakDuration'] as int? ?? _shortBreakDuration,
      longBreakDuration:
          json['longBreakDuration'] as int? ?? _longBreakDuration,
      isAutoStartBreak: json['isAutoStartBreak'] as bool? ?? false,
      isAutoStartPomodoro: json['isAutoStartPomodoro'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PomodoroConfigToJson(_$_PomodoroConfig instance) =>
    <String, dynamic>{
      'longBreakInterval': instance.longBreakInterval,
      'pomodoroDuration': instance.pomodoroDuration,
      'shortBreakDuration': instance.shortBreakDuration,
      'longBreakDuration': instance.longBreakDuration,
      'isAutoStartBreak': instance.isAutoStartBreak,
      'isAutoStartPomodoro': instance.isAutoStartPomodoro,
    };
