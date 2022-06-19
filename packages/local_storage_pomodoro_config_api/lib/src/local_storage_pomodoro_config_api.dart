import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:pomodoro_config_api/pomodoro_config_api.dart';

/// {@template local_storage_pomodoro_config_api}
/// A Flutter implementation of the [PomodoroConfigApi] that uses local storage.
/// {@endtemplate}
class LocalStoragePomodoroConfigApi extends PomodoroConfigApi {
  /// {@macro local_storage_pomodoro_config_api}
  LocalStoragePomodoroConfigApi();

  static const _boxKey = 'pomodoro_config';
  static const _key = 'config';

  Future<Box<PomodoroConfig>> _openBox() async {
    return Hive.openBox<PomodoroConfig>(_boxKey);
  }

  @override
  Future<void> deleteConfig() async {
    final box = await _openBox();
    await box.delete(_key);
  }

  @override
  Future<PomodoroConfig> getConfig() async {
    final box = await _openBox();

    final data = box.get(_key);
    if (data == null) {
      return const PomodoroConfig();
    }
    final jsonString = jsonEncode(data);

    return PomodoroConfig.fromJson(
      jsonDecode(jsonString) as Map<String, dynamic>,
    );
  }

  @override
  Future<PomodoroConfig> saveConfig(PomodoroConfig config) async {
    final box = await _openBox();
    await box.put(_key, config);
    return config;
  }
}
