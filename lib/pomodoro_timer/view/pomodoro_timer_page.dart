import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:just_audio/just_audio.dart';
import 'package:pomo_pomo/pomodoro_timer/bloc/pomodoro_timer_bloc.dart';
import 'package:pomo_pomo/pomodoro_timer/view/pomodoro_timer_actions.dart';
import 'package:pomo_pomo/pomodoro_timer/view/pomodoro_timer_clock.dart';
import 'package:pomo_pomo/router/app_router.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';

class PomodoroTimerPage extends StatelessWidget implements AutoRouteWrapper {
  const PomodoroTimerPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => PomodoroTimerBloc(),
      child: this,
    );
  }

  Future<void> _playFinishedSound() async {
    final player = AudioPlayer(
      audioPipeline: AudioPipeline(
        androidAudioEffects: [
          AndroidLoudnessEnhancer(),
        ],
      ),
    );

    await player.setAsset('assets/audio/bell-ding.wav');
    await player.play();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PomodoroTimerBloc, PomodoroTimerState>(
      listenWhen: (prev, curr) => prev.status != curr.status,
      listener: (context, state) {
        if (state.status == PomodoroTimerStatus.finished) {
          _playFinishedSound();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text(
            'Timer',
          ),
          actions: [
            IconButton(
              onPressed: () {
                AutoRouter.of(context).push(
                  PomodoroTimerSettingsRoute(
                    pomodoroTimerBloc: context.read<PomodoroTimerBloc>(),
                  ),
                );
              },
              icon: const Icon(
                FontAwesomeIcons.gear,
              ),
            )
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.all(
            PomoPomoSpacings.spacing4,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(
                child: PomodoroTimerClock(),
              ),
              PomodoroTimerActions(),
            ],
          ),
        ),
      ),
    );
  }
}
