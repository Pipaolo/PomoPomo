part of 'tutorial_cubit.dart';

@freezed
class TutorialState with _$TutorialState {
  const factory TutorialState.initial() = _Initial;
  const factory TutorialState.finished() = _Finished;
}
