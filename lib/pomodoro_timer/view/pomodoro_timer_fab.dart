import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pomo_pomo/pomodoro_timer/bloc/pomodoro_timer_bloc.dart';
import 'package:simple_animations/simple_animations.dart';

class PomodoroTimerFab extends StatelessWidget {
  const PomodoroTimerFab({super.key});

  @override
  Widget build(BuildContext context) {
    final pomodoroTimerBloc = BlocProvider.of<PomodoroTimerBloc>(context);
    final isRunning = context.select(
      (PomodoroTimerBloc b) => b.state.status == PomodoroTimerStatus.running,
    );
    return FloatingActionButton(
      heroTag: 'pomodoro-timer-fab',
      child: isRunning
          ? const _AnimatedIcon(
              icon: Icon(FontAwesomeIcons.pause),
            )
          : const _AnimatedIcon(
              icon: Icon(FontAwesomeIcons.play),
            ),
      onPressed: () {
        if (isRunning) {
          pomodoroTimerBloc.add(const PomodoroTimerEvent.paused());
        } else {
          pomodoroTimerBloc.add(const PomodoroTimerEvent.played());
        }
      },
    );
  }
}

class _AnimatedIcon extends StatelessWidget {
  const _AnimatedIcon({
    required this.icon,
  });

  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return CustomAnimation<double>(
      control: CustomAnimationControl.playFromStart,
      tween: Tween<double>(
        begin: 0,
        end: 1,
      ),
      duration: const Duration(milliseconds: 300),
      curve: Curves.bounceOut,
      builder: (context, child, value) {
        return Transform.scale(
          scale: value,
          child: child,
        );
      },
      child: icon,
    );
  }
}
