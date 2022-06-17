// ignore_for_file: prefer_const_constructors
import 'package:mocktail/mocktail.dart';
import 'package:pomodoro_config_api/pomodoro_config_api.dart';
import 'package:pomodoro_config_repository/pomodoro_config_repository.dart';
import 'package:test/test.dart';

class MockPomodoroConfigApi extends Mock implements PomodoroConfigApi {}

class FakePomodoroConfig extends Fake implements PomodoroConfig {}

void main() {
  group('PomodoroConfigRepository', () {
    late PomodoroConfigApi api;

    final config = PomodoroConfig();

    setUpAll(() {
      registerFallbackValue(
        FakePomodoroConfig(),
      );
    });

    setUp(() {
      api = MockPomodoroConfigApi();
      when(() => api.getConfig()).thenAnswer((_) async => config);
      when(() => api.saveConfig(any())).thenAnswer((_) async => config);
      when(() => api.deleteConfig()).thenAnswer((_) async {});
    });

    PomodoroConfigRepository createSubject() => PomodoroConfigRepository(
          configApi: api,
        );
    group('constructor', () {
      test('works properly', () {
        expect(createSubject, returnsNormally);
      });
    });
  });
}
