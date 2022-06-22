import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

typedef BuildFunction = Widget Function(BuildContext context);

class ShowcaseBuilderWrapper extends StatelessWidget {
  const ShowcaseBuilderWrapper({
    super.key,
    required this.builder,
    this.onComplete,
    this.onFinish,
    this.onStart,
    this.autoPlay = false,
    this.autoPlayDelay = const Duration(milliseconds: 2000),
    this.autoPlayLockEnable = false,
    this.blurValue = 0,
  });

  final BuildFunction builder;
  final VoidCallback? onFinish;
  final Function(int?, GlobalKey)? onStart;
  final Function(int?, GlobalKey)? onComplete;
  final bool autoPlay;
  final Duration autoPlayDelay;
  final bool autoPlayLockEnable;
  final double blurValue;

  @override
  Widget build(BuildContext context) {
    return ShowCaseWidget(
      autoPlay: autoPlay,
      autoPlayDelay: autoPlayDelay,
      autoPlayLockEnable: autoPlayLockEnable,
      blurValue: blurValue,
      onComplete: onComplete,
      onFinish: onFinish,
      onStart: onStart,
      builder: Builder(builder: builder),
    );
  }
}
