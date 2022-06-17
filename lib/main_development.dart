// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/cupertino.dart';
import 'package:local_storage_pomodoro_config_api/local_storage_pomodoro_config_api.dart';
import 'package:local_storage_task_api/local_storage_task_api.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pomo_pomo/app/app.dart';
import 'package:pomo_pomo/bootstrap.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';
import 'package:pomodoro_config_repository/pomodoro_config_repository.dart';
import 'package:task_repository/task_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final theme = await PomoPomoTheme.build();
  await bootstrap(
    () async {
      Hive.registerAdapter(PomodoroConfigTypeAdapter());

      final localTaskApi = LocalStorageTaskApi();
      await localTaskApi.init((await getApplicationDocumentsDirectory()).path);

      return AppView(
        taskRepository: TaskRepository(taskApi: localTaskApi),
        pomodoroConfigRepository: PomodoroConfigRepository(
          configApi: LocalStoragePomodoroConfigApi(),
        ),
        theme: theme,
      );
    },
  );
}
