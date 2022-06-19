import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pomo_pomo/splash/cubit/splash_cubit.dart';

import '../../helpers/storage.dart';

Future<void> main() async {
  group(
    'SplashCubit',
    () {
      late Storage hydratedStorage;

      setUp(
        () {
          hydratedStorage = MockStorage();
          when(() => hydratedStorage.write(any(), any<dynamic>()))
              .thenAnswer((_) async {});
        },
      );

      SplashCubit build() => HydratedBlocOverrides.runZoned(
            SplashCubit.new,
            storage: hydratedStorage,
          );

      test('initial state is SplashState.visible', () {
        mockHydratedStorage(
          () {
            expect(SplashCubit().state, const SplashState.visible());
          },
        );
      });

      group('hide', () {
        blocTest<SplashCubit, SplashState>(
          'emits SplashState.hidden',
          build: build,
          act: (cubit) => cubit.hide(),
          expect: () => [
            const SplashState.hidden(),
          ],
        );
      });
    },
  );
}
