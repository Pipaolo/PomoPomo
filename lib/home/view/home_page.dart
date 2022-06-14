import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomo_pomo/home/view/home_bottom_navigation_bar.dart';
import 'package:pomo_pomo/home/view/home_fab.dart';
import 'package:pomo_pomo/pomodoro_timer/bloc/pomodoro_timer_bloc.dart';
import 'package:pomo_pomo/router/app_router.dart';

class HomePage extends StatefulWidget implements AutoRouteWrapper {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => PomodoroTimerBloc(),
      child: this,
    );
  }
}

class _HomePageState extends State<HomePage> {
  bool isFabVisible = false;

  void _toggleFab(BuildContext context) {
    final currentRoute = AutoRouter.of(context).topRoute;
    Future.delayed(
      Duration.zero,
      () => setState(() {
        isFabVisible = currentRoute.name == PomodoroTimerRoute.name;
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        PomodoroTimerRoute(),
        PomodoroTimerSettingsRoute(),
      ],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: isFabVisible ? const HomeFab() : null,
      bottomNavigationBuilder: (_, tabsRouter) {
        _toggleFab(context);
        return HomeBottomNavigationBar(
          activeIndex: tabsRouter.activeIndex,
          setActiveIndex: tabsRouter.setActiveIndex,
        );
      },
    );
  }
}
