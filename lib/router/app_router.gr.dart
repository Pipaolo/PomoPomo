// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<SplashPage>(
          routeData: routeData, child: WrappedRoute(child: const SplashPage()));
    },
    TaskListRoute.name: (routeData) {
      return MaterialPageX<TaskListPage>(
          routeData: routeData,
          child: WrappedRoute(child: const TaskListPage()));
    },
    TaskCreateRoute.name: (routeData) {
      return MaterialPageX<TaskCreatePage>(
          routeData: routeData,
          child: WrappedRoute(child: const TaskCreatePage()));
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<HomePage>(
          routeData: routeData, child: WrappedRoute(child: const HomePage()));
    },
    PomodoroTimerRoute.name: (routeData) {
      return MaterialPageX<PomodoroTimerPage>(
          routeData: routeData, child: const PomodoroTimerPage());
    },
    PomodoroTimerSettingsRoute.name: (routeData) {
      return MaterialPageX<PomodoroTimerSettingsPage>(
          routeData: routeData, child: const PomodoroTimerSettingsPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig('/#redirect',
            path: '/', redirectTo: '/splash', fullMatch: true),
        RouteConfig(SplashRoute.name, path: '/splash'),
        RouteConfig(TaskListRoute.name, path: '/task-list'),
        RouteConfig(TaskCreateRoute.name, path: '/task-create'),
        RouteConfig(HomeRoute.name, path: '/pomodoro', children: [
          RouteConfig(PomodoroTimerRoute.name,
              path: 'timer', parent: HomeRoute.name, usesPathAsKey: true),
          RouteConfig(PomodoroTimerSettingsRoute.name,
              path: 'settings', parent: HomeRoute.name, usesPathAsKey: true)
        ])
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/splash');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [TaskListPage]
class TaskListRoute extends PageRouteInfo<void> {
  const TaskListRoute() : super(TaskListRoute.name, path: '/task-list');

  static const String name = 'TaskListRoute';
}

/// generated route for
/// [TaskCreatePage]
class TaskCreateRoute extends PageRouteInfo<void> {
  const TaskCreateRoute() : super(TaskCreateRoute.name, path: '/task-create');

  static const String name = 'TaskCreateRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/pomodoro', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [PomodoroTimerPage]
class PomodoroTimerRoute extends PageRouteInfo<void> {
  const PomodoroTimerRoute() : super(PomodoroTimerRoute.name, path: 'timer');

  static const String name = 'PomodoroTimerRoute';
}

/// generated route for
/// [PomodoroTimerSettingsPage]
class PomodoroTimerSettingsRoute extends PageRouteInfo<void> {
  const PomodoroTimerSettingsRoute()
      : super(PomodoroTimerSettingsRoute.name, path: 'settings');

  static const String name = 'PomodoroTimerSettingsRoute';
}
