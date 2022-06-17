import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        expect(find.byIcon(FontAwesomeIcons.play), findsOneWidget);
      },
    );
  });
}
