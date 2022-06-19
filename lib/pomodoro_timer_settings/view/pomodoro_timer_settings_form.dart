import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomo_pomo/pomodoro_timer_settings/bloc/pomodoro_timer_settings_bloc.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';

class PomodoroTimerSettingsForm extends StatelessWidget {
  const PomodoroTimerSettingsForm({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsBloc = context.read<PomodoroTimerSettingsBloc>();
    return Column(
      children: [
        BlocBuilder<PomodoroTimerSettingsBloc, PomodoroTimerSettingsState>(
          buildWhen: (previous, current) =>
              previous.config.pomodoroDuration !=
              current.config.pomodoroDuration,
          builder: (context, state) {
            final pomodoroDuration = state.config.pomodoroDuration;
            return _SliderInput(
              title: 'Pomodoro Duration',
              subTitle: '$pomodoroDuration Minutes',
              min: 1,
              max: 480,
              value: pomodoroDuration.toDouble(),
              onChanged: (val) => settingsBloc.add(
                PomodoroTimerSettingsEvent.configUpdated(
                  pomodoroDurationInMinutes: val.floorToDouble(),
                ),
              ),
            );
          },
        ),
        BlocBuilder<PomodoroTimerSettingsBloc, PomodoroTimerSettingsState>(
          buildWhen: (previous, current) =>
              previous.config.longBreakInterval !=
              current.config.longBreakInterval,
          builder: (context, state) {
            final longBreak = state.config.longBreakInterval;
            return _SliderInput(
              title: 'Long Break Intervals',
              subTitle: '''Long Break every $longBreak pomodoros''',
              min: 4,
              max: 99,
              value: longBreak.toDouble(),
              onChanged: (val) => settingsBloc.add(
                PomodoroTimerSettingsEvent.configUpdated(
                  pomodoroCountBeforeLongBreak: val.floorToDouble(),
                ),
              ),
            );
          },
        ),
        BlocBuilder<PomodoroTimerSettingsBloc, PomodoroTimerSettingsState>(
          buildWhen: (previous, current) =>
              previous.config.shortBreakDuration !=
              current.config.shortBreakDuration,
          builder: (context, state) {
            final shortBreakDuration = state.config.shortBreakDuration;
            return _SliderInput(
              title: 'Short Break Duration',
              subTitle: '$shortBreakDuration Minutes',
              min: 1,
              max: 480,
              value: shortBreakDuration.toDouble(),
              onChanged: (val) => settingsBloc.add(
                PomodoroTimerSettingsEvent.configUpdated(
                  shortBreakDurationInMinutes: val.floorToDouble(),
                ),
              ),
            );
          },
        ),
        BlocBuilder<PomodoroTimerSettingsBloc, PomodoroTimerSettingsState>(
          buildWhen: (previous, current) =>
              previous.config.longBreakDuration !=
              current.config.longBreakDuration,
          builder: (context, state) {
            final longBreakDuration = state.config.longBreakDuration;
            return _SliderInput(
              title: 'Long Break Duration',
              subTitle: '$longBreakDuration Minutes',
              min: 1,
              max: 480,
              value: longBreakDuration.toDouble(),
              onChanged: (val) => settingsBloc.add(
                PomodoroTimerSettingsEvent.configUpdated(
                  longBreakDurationInMinutes: val.floorToDouble(),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class _SliderInput extends StatelessWidget {
  const _SliderInput({
    required this.title,
    required this.value,
    this.subTitle,
    required this.onChanged,
    required this.max,
    required this.min,
  });

  final String title;
  final String? subTitle;
  final double value;
  final double min;
  final double max;
  final Function(num input) onChanged;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(PomoPomoSpacings.spacing4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.bold,
              ),
            ),
            if (subTitle != null) PomoPomoSpacers.vSpacing2,
            if (subTitle != null)
              SizedBox(
                child: Text(
                  subTitle!,
                  textAlign: TextAlign.center,
                ),
              ),
            Slider(
              value: value,
              min: min,
              max: max,
              divisions: max.toInt(),
              onChanged: onChanged,
            )
          ],
        ),
      ),
    );
  }
}
