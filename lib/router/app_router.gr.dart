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
    PomodoroTimerRoute.name: (routeData) {
      return MaterialPageX<PomodoroTimerPage>(
          routeData: routeData,
          child: WrappedRoute(child: const PomodoroTimerPage()));
    },
    PomodoroTimerSettingsRoute.name: (routeData) {
      final args = routeData.argsAs<PomodoroTimerSettingsRouteArgs>();
      return MaterialPageX<PomodoroTimerSettingsPage>(
          routeData: routeData,
          child: WrappedRoute(
              child: PomodoroTimerSettingsPage(
                  key: args.key, pomodoroTimerBloc: args.pomodoroTimerBloc)));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(PomodoroTimerRoute.name, path: '/pomodoro-timer'),
        RouteConfig(PomodoroTimerSettingsRoute.name, path: '/settings')
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [PomodoroTimerPage]
class PomodoroTimerRoute extends PageRouteInfo<void> {
  const PomodoroTimerRoute()
      : super(PomodoroTimerRoute.name, path: '/pomodoro-timer');

  static const String name = 'PomodoroTimerRoute';
}

/// generated route for
/// [PomodoroTimerSettingsPage]
class PomodoroTimerSettingsRoute
    extends PageRouteInfo<PomodoroTimerSettingsRouteArgs> {
  PomodoroTimerSettingsRoute(
      {Key? key, required PomodoroTimerBloc pomodoroTimerBloc})
      : super(PomodoroTimerSettingsRoute.name,
            path: '/settings',
            args: PomodoroTimerSettingsRouteArgs(
                key: key, pomodoroTimerBloc: pomodoroTimerBloc));

  static const String name = 'PomodoroTimerSettingsRoute';
}

class PomodoroTimerSettingsRouteArgs {
  const PomodoroTimerSettingsRouteArgs(
      {this.key, required this.pomodoroTimerBloc});

  final Key? key;

  final PomodoroTimerBloc pomodoroTimerBloc;

  @override
  String toString() {
    return 'PomodoroTimerSettingsRouteArgs{key: $key, pomodoroTimerBloc: $pomodoroTimerBloc}';
  }
}
