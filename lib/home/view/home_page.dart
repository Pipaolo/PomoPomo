import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomo_pomo/home/view/home_bottom_navigation_bar.dart';
import 'package:pomo_pomo/home/view/home_fab.dart';
import 'package:pomo_pomo/pomodoro_timer/bloc/pomodoro_timer_bloc.dart';
import 'package:pomo_pomo/pomodoro_timer_settings/bloc/pomodoro_timer_settings_bloc.dart';
import 'package:pomo_pomo/router/app_router.dart';
import 'package:pomodoro_config_repository/pomodoro_config_repository.dart';

class HomePage extends StatefulWidget implements AutoRouteWrapper {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PomodoroTimerBloc(
            configRepository: context.read<PomodoroConfigRepository>(),
          ),
        ),
        BlocProvider(
          create: (context) => PomodoroTimerSettingsBloc(
            configRepository: context.read<PomodoroConfigRepository>(),
          )..add(const PomodoroTimerSettingsEvent.started()),
        ),
      ],
      child: this,
    );
  }
}

class _HomePageState extends State<HomePage> {
  bool isFabVisible = false;
  String currentRoute = '';

  Future<void> _toggleFab(String routeName) async {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        currentRoute = routeName;
      });
    });
  }

  bool _isFabVisible() {
    return currentRoute == PomodoroTimerRoute.name;
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [
        const PomodoroTimerRoute(),
        PomodoroTimerSettingsRoute(),
      ],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _isFabVisible()
          ? HomeFab(
              routeName: currentRoute,
            )
          : null,
      navigatorObservers: () => [
        HomeObserver(onRouteChanged: _toggleFab),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return HomeBottomNavigationBar(
          activeIndex: tabsRouter.activeIndex,
          setActiveIndex: tabsRouter.setActiveIndex,
        );
      },
    );
  }
}

class HomeObserver extends AutoRouterObserver {
  HomeObserver({
    required this.onRouteChanged,
  });

  final Function(String routeName) onRouteChanged;

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    onRouteChanged.call(route.name);
    super.didInitTabRoute(route, previousRoute);
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    onRouteChanged.call(route.name);
    super.didChangeTabRoute(route, previousRoute);
  }
}
