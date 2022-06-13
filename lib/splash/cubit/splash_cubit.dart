import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

class SplashCubit extends HydratedCubit<SplashState> {
  SplashCubit() : super(const SplashState.visible());

  void hide() => emit(const SplashState.hidden());

  @override
  SplashState? fromJson(Map<String, dynamic> json) {
    final isVisible = json['isVisible'] as bool? ?? true;

    return isVisible ? const SplashState.visible() : const SplashState.hidden();
  }

  @override
  Map<String, dynamic>? toJson(SplashState state) {
    return <String, dynamic>{
      'isVisible': state is _Visible,
    };
  }
}
