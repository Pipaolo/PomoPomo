// ignore_for_file: prefer_const_constructors
import 'package:mocktail/mocktail.dart';
import 'package:task_api/task_api.dart';
import 'package:task_repository/task_repository.dart';
import 'package:test/test.dart';

class MockTaskApi extends Mock implements TaskApi {}

void main() {
  group('TaskRepository', () {
    late TaskApi api;

    setUp(() {
      api = MockTaskApi();
    });
    test('can be instantiated', () {
      expect(TaskRepository(taskApi: api), isNotNull);
    });
  });
}
