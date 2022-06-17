// ignore_for_file: prefer_const_constructors
import 'package:task_api/task_api.dart';
import 'package:test/test.dart';

class TestTaskApi extends TaskApi {
  TestTaskApi() : super();

  @override
  dynamic noSuchMethod(Invocation invocation) {
    return super.noSuchMethod(invocation);
  }
}

void main() {
  group('TaskApi', () {
    test('can be constructed', () {
      expect(TestTaskApi.new, isNotNull);
    });
  });
}
