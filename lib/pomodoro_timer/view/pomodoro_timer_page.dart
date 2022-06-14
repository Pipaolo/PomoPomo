import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:pomo_pomo/pomodoro_timer/bloc/pomodoro_timer_bloc.dart';
import 'package:pomo_pomo/pomodoro_timer/view/pomodoro_timer_clock.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';

class PomodoroTimerPage extends StatelessWidget {
  const PomodoroTimerPage({super.key});

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
          title: Text(
            'Timer',
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
