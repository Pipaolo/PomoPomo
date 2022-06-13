import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomo_pomo/pomodoro_timer/bloc/pomodoro_timer_bloc.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';

class PomodoroTimerActions extends StatelessWidget {
  const PomodoroTimerActions({super.key});

  List<Widget> _buildPausedActions(
    BuildContext context, {
    bool isBreak = false,
  }) {
    return [
      SizedBox(
        width: double.maxFinite,
        child: ElevatedButton(
          onPressed: () {
            context.read<PomodoroTimerBloc>().add(
                  const PomodoroTimerEvent.started(),
                );
          },
          child: const Text('Start'),
        ),
      ),
      if (!isBreak) PomoPomoSpacers.vSpacing4,
      if (!isBreak)
        SizedBox(
          width: double.maxFinite,
          child: ElevatedButton(
            onPressed: () => context.read<PomodoroTimerBloc>().add(
                  const PomodoroTimerEvent.resetRequested(),
                ),
            child: const Text('Reset'),
          ),
        ),
    ];
  }

  List<Widget> _buildRunningActions(
    BuildContext context, {
    bool isBreak = false,
  }) {
    return [
      SizedBox(
        width: double.maxFinite,
        child: ElevatedButton(
          onPressed: () {
            context
                .read<PomodoroTimerBloc>()
                .add(const PomodoroTimerEvent.paused());
          },
          child: const Text('Pause'),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PomodoroTimerBloc, PomodoroTimerState>(
      builder: (context, state) {
        final isRunning = state.status == PomodoroTimerStatus.running;
        final isBreak = state.mode == PomodoroTimerMode.shortBreak ||
            state.mode == PomodoroTimerMode.longBreak;

        return SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              if (!isRunning) ..._buildPausedActions(context, isBreak: isBreak),
              if (isRunning) ..._buildRunningActions(context, isBreak: isBreak),
              if (isBreak) PomoPomoSpacers.vSpacing4,
              if (isBreak)
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {
                      context
                          .read<PomodoroTimerBloc>()
                          .add(const PomodoroTimerEvent.breakSkipped());
                    },
                    child: const Text('Skip'),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
