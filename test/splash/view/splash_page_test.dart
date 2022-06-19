import 'package:auto_route/auto_route.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pomo_pomo/splash/cubit/splash_cubit.dart';
import 'package:pomo_pomo/splash/splash.dart';

class MockSplashCubit extends MockCubit<SplashState> implements SplashCubit {}

class MockStackRouter extends Mock implements StackRouter {}

class FakePageRouteInfo extends Fake implements PageRouteInfo<dynamic> {}

extension on WidgetTester {
  Future<void> pumpSplashPage(SplashCubit splashCubit) async {
    final stackRouter = MockStackRouter();
    when(() => stackRouter.replace(any())).thenAnswer((_) async {
      return null;
    });

    return pumpWidget(
      MaterialApp(
        home: StackRouterScope(
          controller: stackRouter,
          stateHash: 0,
          child: BlocProvider.value(
            value: splashCubit,
            child: const SplashPage(),
          ),
        ),
      ),
    );
  }
}

void main() {
  late SplashCubit splashCubit;

  setUp(() {
    splashCubit = MockSplashCubit();
    registerFallbackValue(FakePageRouteInfo());
  });

  tearDown(
    () => reset(splashCubit),
  );

  group('SplashPage', () {
    testWidgets('renders initial Splash view', (tester) async {
      when(() => splashCubit.state).thenReturn(const SplashState.visible());
      await tester.pumpSplashPage(splashCubit);
      await tester.pumpAndSettle();
      expect(find.text('Be Productive Now!'), findsOneWidget);
      expect(find.text('Pomo Pomo'), findsOneWidget);
    });

    testWidgets('renders no widgets when hidden', (tester) async {
      when(() => splashCubit.state).thenReturn(const SplashState.hidden());
      await tester.pumpSplashPage(splashCubit);
      await tester.pumpAndSettle();
      expect(find.text('Be Productive Now!'), findsNothing);
      expect(find.text('Pomo Pomo!'), findsNothing);
    });
  });
}
