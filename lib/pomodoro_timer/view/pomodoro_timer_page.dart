import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:pomo_pomo/pomodoro_timer/pomodoro_timer.dart';
import 'package:pomo_pomo/router/app_router.dart';
import 'package:pomo_pomo/task_list/bloc/task_list_bloc.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';

class PomodoroTimerPage extends StatefulWidget {
  const PomodoroTimerPage({super.key});

  @override
  State<PomodoroTimerPage> createState() => _PomodoroTimerPageState();
}

class _PomodoroTimerPageState extends State<PomodoroTimerPage> {
  Future<void> _playFinishedSound() async {
    try {
      final player = AudioPlayer(
        audioPipeline: AudioPipeline(),
      );

      await player.setAsset('assets/audio/bell-ding.wav');
      await player.play();
    } catch (e) {
      log('Error playing sound: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<PomodoroTimerBloc, PomodoroTimerState>(
          listener: (context, state) {
            if (state.status == PomodoroTimerStatus.finished) {
              _playFinishedSound();
            } else if (state.status == PomodoroTimerStatus.finishedBreak) {
              _playFinishedSound();
            }
          },
        ),
        BlocListener<PomodoroTimerBloc, PomodoroTimerState>(
          listenWhen: (prev, curr) => prev.status != curr.status,
          listener: (context, state) {
            if (state.status == PomodoroTimerStatus.finished) {
              context.read<TaskListBloc>().add(
                    const TaskListEvent.allTasksIncremented(),
                  );
            }
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Timer',
            style: GoogleFonts.inter(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        floatingActionButton: ElevatedButton(
          onPressed: () => AutoRouter.of(context).push(const TaskListRoute()),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(99),
            ),
          ),
          child: Text(
            'View Tasks'.toUpperCase(),
            style: GoogleFonts.inter(
              fontWeight: FontWeight.bold,
            ),
          ),
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
            ],
          ),
        ),
      ),
    );
  }
}
