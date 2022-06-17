// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pomo_pomo/l10n/l10n.dart';
import 'package:pomo_pomo/router/app_router.dart';
import 'package:pomodoro_config_repository/pomodoro_config_repository.dart';

class AppView extends StatelessWidget {
  const AppView({
    super.key,
    required ThemeData theme,

    // Repository Vars
    required PomodoroConfigRepository pomodoroConfigRepository,
  })  : _theme = theme,
        _pomodoroConfigRepository = pomodoroConfigRepository;

  final ThemeData _theme;
  final PomodoroConfigRepository _pomodoroConfigRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: _pomodoroConfigRepository),
      ],
      child: App(
        theme: _theme,
      ),
    );
  }
}

class App extends StatelessWidget {
  const App({
    super.key,
    required ThemeData theme,
  }) : _theme = theme;

  final ThemeData _theme;
  static final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: _theme,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      routerDelegate: _router.delegate(),
      routeInformationParser: _router.defaultRouteParser(),
    );
  }
}
