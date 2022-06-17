import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomo_pomo/pomodoro_timer_settings/bloc/pomodoro_timer_settings_bloc.dart';
import 'package:pomo_pomo/pomodoro_timer_settings/view/pomodoro_timer_settings_form.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';

class PomodoroTimerSettingsPage extends StatelessWidget {
  const PomodoroTimerSettingsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Settings',
          style: GoogleFonts.inter(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: BlocBuilder<PomodoroTimerSettingsBloc, PomodoroTimerSettingsState>(
        builder: (context, state) {
          final status = state.status;

          switch (status) {
            case PomodoroTimerSettingsStatus.initial:
            case PomodoroTimerSettingsStatus.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case PomodoroTimerSettingsStatus.success:
              break;
            case PomodoroTimerSettingsStatus.failure:
              break;
          }
          return const Padding(
            padding: EdgeInsets.all(
              PomoPomoSpacings.spacing4,
            ),
            child: PomodoroTimerSettingsForm(),
          );
        },
      ),
    );
  }
}
