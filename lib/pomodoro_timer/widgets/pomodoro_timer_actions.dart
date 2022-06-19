import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pomo_pomo/pomodoro_timer/bloc/pomodoro_timer_bloc.dart';

class PomodoroTimerActions extends StatelessWidget {
  const PomodoroTimerActions({super.key});

  @override
  Widget build(BuildContext context) {
    final isRunning = context.select(
      (PomodoroTimerBloc b) => b.state.status == PomodoroTimerStatus.running,
    );
    final isInBreak = context.select(
      (PomodoroTimerBloc b) =>
          b.state.mode == PomodoroTimerMode.shortBreak ||
          b.state.mode == PomodoroTimerMode.longBreak,
    );

    return Column(
      children: [
        if (!isRunning && !isInBreak)
          _ActionButton(
            tooltipMessage: 'Restart Session',
            onPressed: () => context.read<PomodoroTimerBloc>().add(
                  const PomodoroTimerEvent.resetRequested(),
                ),
            icon: Icon(
              FontAwesomeIcons.arrowsRotate,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
          ),
        if (isInBreak)
          _ActionButton(
            tooltipMessage: 'Skip Break',
            onPressed: () => context.read<PomodoroTimerBloc>().add(
                  const PomodoroTimerEvent.breakSkipped(),
                ),
            icon: Icon(
              FontAwesomeIcons.checkDouble,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
          ),
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({
    required this.tooltipMessage,
    required this.onPressed,
    required this.icon,
  });

  final String tooltipMessage;
  final VoidCallback onPressed;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        primary: Theme.of(context).colorScheme.secondary,
        padding: const EdgeInsets.all(
          8,
        ),
      ),
      onPressed: onPressed,
      child: Tooltip(
        message: tooltipMessage,
        child: icon,
      ),
    );
  }
}
