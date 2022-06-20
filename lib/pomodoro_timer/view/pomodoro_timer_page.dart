import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:pomo_pomo/pomodoro_timer/pomodoro_timer.dart';
import 'package:pomo_pomo/task_list/bloc/task_list_bloc.dart';
import 'package:pomo_pomo/tutorial/tutorial.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';
import 'package:showcaseview/showcaseview.dart';

class PomodoroTimerPage extends StatefulWidget implements AutoRouteWrapper {
  const PomodoroTimerPage({super.key});

  @override
  State<PomodoroTimerPage> createState() => _PomodoroTimerPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<TutorialTimerCubit>(
      create: (context) => TutorialTimerCubit(),
      child: this,
    );
  }
}

class _PomodoroTimerPageState extends State<PomodoroTimerPage> {
  BuildContext? _showCaseContext;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_showCaseContext == null) return;

      context.read<TutorialTimerCubit>().state.when(
            initial: () {
              ShowCaseWidget.of(_showCaseContext!)?.startShowCase(
                [
                  _timerMode,
                  _timerProgress,
                  _timerActionButton,
                  _taskListButton
                ],
              );
            },
            finished: () {},
          );
    });
  }

  final _timerActionButton = GlobalKey();
  final _timerProgress = GlobalKey();
  final _timerMode = GlobalKey();
  final _taskListButton = GlobalKey();

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
      child: ShowCaseWidget(
        onFinish: () {
          context.read<TutorialTimerCubit>().finished();
        },
        builder: Builder(
          builder: (context) {
            _showCaseContext = context;
            return Scaffold(
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
              floatingActionButton: PomodoroTimerViewTaskButton(
                showCaseKey: _taskListButton,
              ),
              body: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.all(
                  PomoPomoSpacings.spacing4,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: PomodoroTimerClock(
                        actionsShowCaseKey: _timerActionButton,
                        modeShowCaseKey: _timerMode,
                        progressShowCaseKey: _timerProgress,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

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
}
