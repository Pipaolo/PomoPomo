import 'package:flutter/material.dart';
import 'package:pomo_pomo/pomodoro_timer/view/pomodoro_timer_fab.dart';
import 'package:pomo_pomo/router/app_router.dart';

/// This Fab automatically handles what to show in different pages.
class HomeFab extends StatelessWidget {
  const HomeFab({
    super.key,
    required this.routeName,
  });

  final String routeName;

  @override
  Widget build(BuildContext context) {
    switch (routeName) {
      case PomodoroTimerRoute.name:
        return const PomodoroTimerFab();
      default:
        return const SizedBox();
    }
  }
}
