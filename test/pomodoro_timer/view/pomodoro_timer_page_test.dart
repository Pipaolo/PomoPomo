import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pomo_pomo/pomodoro_timer/bloc/pomodoro_timer_bloc.dart';
import 'package:pomo_pomo/pomodoro_timer/pomodoro_timer.dart';

class MockPomodoroTimerBloc
    extends MockBloc<PomodoroTimerEvent, PomodoroTimerState>
    implements PomodoroTimerBloc {}

extension on WidgetTester {
  Future<void> pumpPomodoroTimerPage(
    PomodoroTimerBloc pomodoroTimerBloc,
  ) async {
    return pumpWidget(
      MaterialApp(
        home: BlocProvider.value(
          value: pomodoroTimerBloc,
          child: const PomodoroTimerPage(),
        ),
      ),
    );
  }
}

void main() {
  late PomodoroTimerBloc pomodoroTimerBloc;

  setUp(
    () {
      pomodoroTimerBloc = MockPomodoroTimerBloc();
    },
  );

  group('PomodoroTimerPage', () {
    testWidgets(
      'renders initial PomodoroTimer view',
      (tester) async {
        when(() => pomodoroTimerBloc.state).thenReturn(
          const PomodoroTimerState(),
        );
        await tester.pumpPomodoroTimerPage(pomodoroTimerBloc);
        await tester.pumpAndSettle();

        expect(find.text('Timer'), findsOneWidget);
        expect(find.text('05:00'), findsOneWidget);
      },
    );
  });
  testWidgets('timer should be decreased by 1', (tester) async {
    when(() => pomodoroTimerBloc.state).thenReturn(
      const PomodoroTimerState(
        elapsedDuration: Duration(seconds: 1),
      ),
    );
    await tester.pumpPomodoroTimerPage(pomodoroTimerBloc);
    await tester.pumpAndSettle();
    expect(find.text('04:59'), findsOneWidget);
  });
}
