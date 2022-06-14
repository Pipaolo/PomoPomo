import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pomo_pomo/pomodoro_timer/view/pomodoro_timer_fab.dart';
import 'package:pomo_pomo/router/app_router.dart';

/// This Fab automatically handles what to show in different pages.
class HomeFab extends StatelessWidget {
  const HomeFab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentRoute = AutoRouter.of(context).topRoute;
    switch (currentRoute.name) {
      case PomodoroTimerRoute.name:
        return const PomodoroTimerFab();
      default:
        return const SizedBox();
    }
  }
}
