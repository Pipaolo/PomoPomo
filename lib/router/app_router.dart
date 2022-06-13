import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:pomo_pomo/home/home.dart';
import 'package:pomo_pomo/splash/view/splash_page.dart';

part 'app_router.g.dart';

@TypedGoRoute<HomeRoute>(path: '/')
class HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context) => const HomeView();
}

@TypedGoRoute<SplashRoute>(
  path: '/splash',
)
class SplashRoute extends GoRouteData {
  const SplashRoute();

  @override
  Widget build(BuildContext context) => const SplashView();
}
