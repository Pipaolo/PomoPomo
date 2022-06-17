import 'package:pomodoro_config_api/src/models/models.dart';

/// {@template pomodoro_config_api}
/// The interface for an API that provides access to a [PomodoroConfig].
/// {@endtemplate}
abstract class PomodoroConfigApi {
  /// {@macro pomodoro_config_api}
  const PomodoroConfigApi();

  /// Fetches a [PomodoroConfig] from the API.
  Future<PomodoroConfig> getConfig();

  /// Saves a [PomodoroConfig].
  Future<PomodoroConfig> saveConfig(PomodoroConfig config);

  /// Deletes a [PomodoroConfig].
  Future<void> deleteConfig();
}
