import 'package:flutter/widgets.dart';
import 'package:pomo_pomo/widgets/showcase/custom_showcase.dart';

/// This widgets is a wrapper for the [CustomShowCase] widget.
///
/// which renders it's child widget by itself when there is no key
/// provided.
class ShowCaseWidgetWrapper extends StatelessWidget {
  const ShowCaseWidgetWrapper({
    super.key,
    this.showCaseKey,
    required this.child,
    required this.description,
  });

  final GlobalKey? showCaseKey;
  final Widget child;
  final String description;

  @override
  Widget build(BuildContext context) {
    if (showCaseKey == null) {
      return child;
    }
    return CustomShowCase(
      showCaseKey: showCaseKey!,
      description: description,
      child: child,
    );
  }
}
