// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:async';
import 'dart:developer';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pomo_pomo/app/view/app.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';
import 'package:pomodoro_config_api/pomodoro_config_api.dart';
import 'package:pomodoro_config_repository/pomodoro_config_repository.dart';
import 'package:task_api/task_api.dart';
import 'package:task_repository/task_repository.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap({
  required TaskApi taskApi,
  required PomodoroConfigApi configApi,
  required HydratedStorage hydratedStorage,
}) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  final taskRepository = TaskRepository(taskApi: taskApi);
  final pomodoroConfigRepository = PomodoroConfigRepository(
    configApi: configApi,
  );

  final theme = await PomoPomoTheme.build();
  await AudioPlayer.global.changeLogLevel(LogLevel.info);
  await AudioPlayer.global.setGlobalAudioContext(
    AudioContext(
      android: AudioContextAndroid(
        isSpeakerphoneOn: true,
        stayAwake: false,
        contentType: AndroidContentType.music,
        usageType: AndroidUsageType.alarm,
        audioFocus: AndroidAudioFocus.gainTransientExclusive,
      ),
      iOS: AudioContextIOS(
        category: AVAudioSessionCategory.playback,
        defaultToSpeaker: true,
        options: [AVAudioSessionOptions.interruptSpokenAudioAndMixWithOthers],
      ),
    ),
  );

  await runZonedGuarded(
    () async {
      await HydratedBlocOverrides.runZoned(
        () async => runApp(
          AppView(
            theme: theme,
            taskRepository: taskRepository,
            pomodoroConfigRepository: pomodoroConfigRepository,
          ),
        ),
        blocObserver: AppBlocObserver(),
        storage: hydratedStorage,
      );
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
