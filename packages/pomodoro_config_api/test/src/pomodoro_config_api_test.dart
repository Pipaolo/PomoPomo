// ignore_for_file: prefer_const_constructors
import 'package:pomodoro_config_api/pomodoro_config_api.dart';
import 'package:test/test.dart';

class TestPomodoroConfigApi extends PomodoroConfigApi {
  TestPomodoroConfigApi() : super();

  @override
  dynamic noSuchMethod(Invocation invocation) {
    return super.noSuchMethod(invocation);
  }
}

void main() {
  group('PomodoroConfigApi', () {
    test('can be constructed', () {
      expect(TestPomodoroConfigApi.new, isNotNull);
    });
  });
}
