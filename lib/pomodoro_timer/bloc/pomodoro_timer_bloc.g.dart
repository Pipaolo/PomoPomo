// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro_timer_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PomodoroTimerState _$$_PomodoroTimerStateFromJson(
        Map<String, dynamic> json) =>
    _$_PomodoroTimerState(
      status:
          $enumDecodeNullable(_$PomodoroTimerStatusEnumMap, json['status']) ??
              PomodoroTimerStatus.paused,
      mode: $enumDecodeNullable(_$PomodoroTimerModeEnumMap, json['mode']) ??
          PomodoroTimerMode.work,
      workCount: json['workCount'] as int? ?? 0,
      elapsedDuration: Duration(microseconds: json['elapsedDuration'] as int) ??
          Duration.zero,
      selectedDuration:
          Duration(microseconds: json['selectedDuration'] as int) ??
              const Duration(minutes: 5),
    );

Map<String, dynamic> _$$_PomodoroTimerStateToJson(
        _$_PomodoroTimerState instance) =>
    <String, dynamic>{
      'status': _$PomodoroTimerStatusEnumMap[instance.status],
      'mode': _$PomodoroTimerModeEnumMap[instance.mode],
      'workCount': instance.workCount,
      'elapsedDuration': instance.elapsedDuration.inMicroseconds,
      'selectedDuration': instance.selectedDuration.inMicroseconds,
    };

const _$PomodoroTimerStatusEnumMap = {
  PomodoroTimerStatus.paused: 'paused',
  PomodoroTimerStatus.running: 'running',
  PomodoroTimerStatus.finished: 'finished',
  PomodoroTimerStatus.finishedBreak: 'finishedBreak',
};

const _$PomodoroTimerModeEnumMap = {
  PomodoroTimerMode.work: 'work',
  PomodoroTimerMode.shortBreak: 'shortBreak',
  PomodoroTimerMode.longBreak: 'longBreak',
};
