import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pomo_pomo/home/home.dart';
import 'package:pomo_pomo/pomodoro_timer/pomodoro_timer.dart';
import 'package:pomo_pomo/pomodoro_timer_settings/pomodoro_timer_settings.dart';
import 'package:pomo_pomo/splash/splash.dart';
import 'package:pomo_pomo/task_create/view/view.dart';
import 'package:pomo_pomo/task_list/task_list.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    RedirectRoute(path: '/', redirectTo: '/splash'),
    AutoRoute<SplashPage>(
      page: SplashPage,
      initial: true,
      path: '/splash',
    ),
    AutoRoute<TaskListPage>(
      page: TaskListPage,
      path: '/task-list',
    ),
    AutoRoute<TaskCreatePage>(
      page: TaskCreatePage,
      path: '/task-create',
    ),
    AutoRoute<HomePage>(
      page: HomePage,
      path: '/pomodoro',
      children: [
        AutoRoute<PomodoroTimerPage>(
          page: PomodoroTimerPage,
          path: 'timer',
          usesPathAsKey: true,
        ),
        AutoRoute<PomodoroTimerSettingsPage>(
          page: PomodoroTimerSettingsPage,
          path: 'settings',
          usesPathAsKey: true,
        ),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {}
