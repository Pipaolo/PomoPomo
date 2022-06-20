import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'tutorial_state.dart';
part 'tutorial_cubit.freezed.dart';

class TutorialTimerCubit extends TutorialCubit {}

class TutorialTaskListCubit extends TutorialCubit {}

class TutorialCubit extends HydratedCubit<TutorialState> {
  TutorialCubit() : super(const TutorialState.initial());

  void reset() {
    emit(const TutorialState.initial());
  }

  void stepUpdated(int activeId) {
    emit(TutorialState.ongoing(activeId));
  }

  void finished() {
    emit(const TutorialState.finished());
  }

  @override
  TutorialState? fromJson(Map<String, dynamic> json) {
    final isFinished = json['isFinished'] as bool? ?? false;
    return isFinished
        ? const TutorialState.finished()
        : const TutorialState.initial();
  }

  @override
  Map<String, dynamic>? toJson(TutorialState state) {
    return state.map(
      ongoing: (_) => <String, dynamic>{'isFinished': false},
      initial: (_) => <String, dynamic>{
        'isFinished': false,
      },
      finished: (_) => <String, dynamic>{
        'isFinished': true,
      },
    );
  }
}
