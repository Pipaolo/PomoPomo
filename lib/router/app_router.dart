import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pomo_pomo/pomodoro_timer/bloc/pomodoro_timer_bloc.dart';
import 'package:pomo_pomo/pomodoro_timer/pomodoro_timer.dart';
import 'package:pomo_pomo/splash/splash.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<SplashPage>(
      page: SplashPage,
      initial: true,
    ),
    AutoRoute<PomodoroTimerPage>(
      page: PomodoroTimerPage,
      path: '/pomodoro-timer',
    ),
    AutoRoute<PomodoroTimerSettingsPage>(
      page: PomodoroTimerSettingsPage,
      path: '/settings',
    ),
  ],
)
class AppRouter extends _$AppRouter {}

// @TypedGoRoute<HomeRoute>(path: '/')
// class HomeRoute extends GoRouteData {
//   @override
//   Widget build(BuildContext context) => const HomeView();
// }

// @TypedGoRoute<PomodoroTimerRoute>(
//   path: '/timer',
//   routes: [
//     TypedGoRoute<PomodoroTimerSettingsRoute>(path: 'settings'),
//   ],
// )
// class PomodoroTimerRoute extends GoRouteData {
//   @override
//   Widget build(BuildContext context) => BlocProvider(
//         create: (context) => PomodoroTimerBloc(),
//         child: const PomodoroTimerPage(),
//       );
// }

// class PomodoroTimerSettingsRoute extends GoRouteData {
//   PomodoroTimerSettingsRoute();

//   @override
//   Widget build(BuildContext context) => const PomodoroTimerSettingsPage();
// }

// @TypedGoRoute<SplashRoute>(
//   path: '/splash',
// )
// class SplashRoute extends GoRouteData {
//   const SplashRoute();

//   @override
//   Widget build(BuildContext context) => const SplashView();
// }
