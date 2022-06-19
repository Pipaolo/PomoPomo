import 'package:local_storage_pomodoro_config_api/local_storage_pomodoro_config_api.dart';
import 'package:pomodoro_config_api/pomodoro_config_api.dart';

/// PomodoroConfigeTypeAdapter
class PomodoroConfigTypeAdapter extends TypeAdapter<PomodoroConfig> {
  @override
  PomodoroConfig read(BinaryReader reader) {
    final result =
        Map<String, dynamic>.from(reader.read() as Map<dynamic, dynamic>);
    return PomodoroConfig.fromJson(result);
  }

  @override
  int get typeId => 0;

  @override
  void write(BinaryWriter writer, PomodoroConfig obj) {
    writer.write(obj.toJson());
  }
}
