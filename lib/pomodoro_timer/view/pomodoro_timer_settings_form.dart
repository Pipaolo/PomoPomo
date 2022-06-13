import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomo_pomo/pomodoro_timer/bloc/pomodoro_timer_bloc.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';

class PomodoroTimerSettingsForm extends StatelessWidget {
  const PomodoroTimerSettingsForm({super.key});

  @override
  Widget build(BuildContext context) {
    final pomodoroTimerBloc = context.read<PomodoroTimerBloc>();
    return Column(
      children: [
        BlocBuilder<PomodoroTimerBloc, PomodoroTimerState>(
          buildWhen: (previous, current) =>
              previous.config.pomodoroDurationInMinutes !=
              current.config.pomodoroDurationInMinutes,
          builder: (context, state) {
            final pomodoroDuration = state.config.pomodoroDurationInMinutes;
            return _SliderInput(
              title: 'Pomodoro Duration',
              subTitle: '$pomodoroDuration Minutes',
              min: 1,
              max: 480,
              value: pomodoroDuration,
              onChanged: (val) => pomodoroTimerBloc.add(
                PomodoroTimerEvent.configUpdated(
                  pomodoroDurationInMinutes: val.floorToDouble(),
                ),
              ),
            );
          },
        ),
        BlocBuilder<PomodoroTimerBloc, PomodoroTimerState>(
          buildWhen: (previous, current) =>
              previous.config.pomodoroCountBeforeLongBreak !=
              current.config.pomodoroCountBeforeLongBreak,
          builder: (context, state) {
            final longBreak = state.config.pomodoroCountBeforeLongBreak;
            return _SliderInput(
              title: 'Long Break Intervals',
              subTitle: '''Long Break every $longBreak pomodoros''',
              min: 4,
              max: 99,
              value: longBreak,
              onChanged: (val) => pomodoroTimerBloc.add(
                PomodoroTimerEvent.configUpdated(
                  pomodoroCountBeforeLongBreak: val.floorToDouble(),
                ),
              ),
            );
          },
        ),
        BlocBuilder<PomodoroTimerBloc, PomodoroTimerState>(
          buildWhen: (previous, current) =>
              previous.config.shortBreakDurationInMinutes !=
              current.config.shortBreakDurationInMinutes,
          builder: (context, state) {
            final shortBreakDuration = state.config.shortBreakDurationInMinutes;
            return _SliderInput(
              title: 'Short Break Duration',
              subTitle: '$shortBreakDuration Minutes',
              min: 1,
              max: 480,
              value: shortBreakDuration,
              onChanged: (val) => pomodoroTimerBloc.add(
                PomodoroTimerEvent.configUpdated(
                  shortBreakDurationInMinutes: val.floorToDouble(),
                ),
              ),
            );
          },
        ),
        BlocBuilder<PomodoroTimerBloc, PomodoroTimerState>(
          buildWhen: (previous, current) =>
              previous.config.longBreakDurationInMinutes !=
              current.config.longBreakDurationInMinutes,
          builder: (context, state) {
            final longBreakDuration = state.config.longBreakDurationInMinutes;
            return _SliderInput(
              title: 'Long Break Duration',
              subTitle: '$longBreakDuration Minutes',
              min: 1,
              max: 480,
              value: longBreakDuration,
              onChanged: (val) => pomodoroTimerBloc.add(
                PomodoroTimerEvent.configUpdated(
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
    return Column(
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
    );
  }
}
