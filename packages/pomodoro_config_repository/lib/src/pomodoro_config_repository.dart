import 'package:pomodoro_config_api/pomodoro_config_api.dart';

/// {@template pomodoro_config_repository}
/// A repository that handles PomodoroConfig related requests.
/// {@endtemplate}
class PomodoroConfigRepository {
  /// {@macro pomodoro_config_repository}
  const PomodoroConfigRepository({
    required PomodoroConfigApi configApi,
  }) : _configApi = configApi;

  final PomodoroConfigApi _configApi;

  /// Provides a [PomodoroConfig]
  Future<PomodoroConfig> getConfig() => _configApi.getConfig();

  /// Saves a [PomodoroConfig].
  Future<PomodoroConfig> saveConfig(PomodoroConfig config) =>
      _configApi.saveConfig(config);

  /// Deletes the config.
  Future<void> deleteConfig() => _configApi.deleteConfig();
}
