import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomo_pomo/pomodoro_timer/bloc/pomodoro_timer_bloc.dart';
import 'package:pomo_pomo/pomodoro_timer/view/pomodoro_timer_settings_form.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';

class PomodoroTimerSettingsPage extends StatelessWidget
    implements AutoRouteWrapper {
  const PomodoroTimerSettingsPage({
    super.key,
    required this.pomodoroTimerBloc,
  });

  final PomodoroTimerBloc pomodoroTimerBloc;

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
      body: const Padding(
        padding: EdgeInsets.all(
          PomoPomoSpacings.spacing8,
        ),
        child: PomodoroTimerSettingsForm(),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: pomodoroTimerBloc,
      child: this,
    );
  }
}
