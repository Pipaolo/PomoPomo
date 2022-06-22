// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:local_storage_pomodoro_config_api/local_storage_pomodoro_config_api.dart';
import 'package:local_storage_task_api/local_storage_task_api.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pomo_pomo/bootstrap.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Directory? dir;

  if (!kIsWeb) {
    dir = await getApplicationDocumentsDirectory();
  } else {
    dir = HydratedStorage.webStorageDirectory;
  }

  await Hive.initFlutter();
  Hive.registerAdapter(PomodoroConfigTypeAdapter());

  final storage = await HydratedStorage.build(
    storageDirectory: dir,
  );

  final localTaskApi = LocalStorageTaskApi();
  await localTaskApi.init(dir.path);

  await bootstrap(
    taskApi: localTaskApi,
    configApi: LocalStoragePomodoroConfigApi(),
    hydratedStorage: storage,
  );
}
