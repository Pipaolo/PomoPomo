import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pomo_pomo/pomodoro_timer/view/pomodoro_timer_fab.dart';
import 'package:pomo_pomo/router/app_router.dart';

/// This Fab automatically handles what to show in different pages.
class HomeFab extends StatefulWidget {
  const HomeFab({
    super.key,
  });

  @override
  State<HomeFab> createState() => _HomeFabState();
}

class _HomeFabState extends State<HomeFab>
    with AutoRouteAwareStateMixin<HomeFab> {
  @override
  void didChangeTabRoute(TabPageRoute previousRoute) {
    log('Previous Route: $previousRoute');
    super.didChangeTabRoute(previousRoute);
  }

  @override
  void didPushNext() {
    log('Next Route: ${AutoRouter.of(context).topRoute}');
    super.didPushNext();
  }

  @override
  Widget build(BuildContext context) {
    final currentRoute = AutoRouter.of(context).topRoute;
    return Offstage(
      offstage: currentRoute.name != PomodoroTimerRoute.name,
      child: const PomodoroTimerFab(),
    );
    // switch (currentRoute.name) {
    //   case PomodoroTimerRoute.name:
    //     return const PomodoroTimerFab();
    //   default:
    //     return const SizedBox();
    // }
  }
}
