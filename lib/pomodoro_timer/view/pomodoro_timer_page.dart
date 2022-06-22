import 'dart:developer';

import 'package:audioplayers/audioplayers.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomo_pomo/pomodoro_timer/pomodoro_timer.dart';
import 'package:pomo_pomo/task_list/bloc/task_list_bloc.dart';
import 'package:pomo_pomo/tutorial/tutorial.dart';
import 'package:pomo_pomo/widgets/showcase/showcase.dart';
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

      context.read<TutorialTimerCubit>().state.maybeWhen(
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
            orElse: () {},
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
          listenWhen: (prev, curr) => prev.status != curr.status,
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
      child: ShowcaseBuilderWrapper(
        onFinish: () {
          context.read<TutorialTimerCubit>().finished();
        },
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
    );
  }

  Future<void> _playFinishedSound() async {
    try {
      final newPlayer = AudioPlayer();

      await newPlayer.play(
        AssetSource('audio/bell-ding.wav'),
      );
    } catch (e) {
      log('Error playing sound: $e');
    }
  }
}
