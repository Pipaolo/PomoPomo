import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pomo_pomo/pomodoro_timer/bloc/pomodoro_timer_bloc.dart';
import 'package:pomo_pomo/pomodoro_timer/pomodoro_timer.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';

class PomodoroTimerClock extends StatelessWidget {
  const PomodoroTimerClock({super.key});

  String padStr(num i) => i.toString().padLeft(2, '0');

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PomodoroTimerBloc, PomodoroTimerState>(
      builder: (context, state) {
        final selectedDuration = state.selectedDuration;
        final elapsedDuration = state.elapsedDuration;
        final diff = selectedDuration - elapsedDuration;
        final progress = elapsedDuration.inSeconds / selectedDuration.inSeconds;
        final minutes = diff.inMinutes;
        final seconds = diff.inSeconds.remainder(60);

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(PomoPomoSpacings.spacing4),
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                shape: BoxShape.circle,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    blurRadius: 16,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ],
              ),
              child: CircularPercentIndicator(
                radius: 150,
                lineWidth: 20,
                animationDuration: 300,
                circularStrokeCap: CircularStrokeCap.round,
                rotateLinearGradient: true,
                linearGradient: LinearGradient(
                  colors: [
                    Colors.grey.shade800,
                    Theme.of(context).colorScheme.primary,
                    Theme.of(context).colorScheme.primary,
                    Theme.of(context).colorScheme.primary,
                    // Colors.grey.shade800,
                  ],
                  tileMode: TileMode.mirror,
                  stops: const [0, .25, 0.50, 1],
                ),
                percent: progress,
                animation: true,
                animateFromLastPercent: true,
                backgroundColor: Colors.grey.shade800,
                // progressColor: Theme.of(context).colorScheme.primary,
                center: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const _Title(),
                    Text(
                      '${padStr(minutes)}:${padStr(seconds)}',
                      style: GoogleFonts.inter(
                        fontSize: 54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const PomodoroTimerActions(),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PomodoroTimerBloc, PomodoroTimerState>(
      builder: (context, state) {
        final mode = state.mode;
        switch (mode) {
          case PomodoroTimerMode.work:
            return const Text('Work');

          case PomodoroTimerMode.shortBreak:
            return const Text('Short Break');

          case PomodoroTimerMode.longBreak:
            return const Text('Long Break');
        }
      },
    );
  }
}
