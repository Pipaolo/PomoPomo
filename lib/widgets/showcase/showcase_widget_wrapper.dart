import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';
import 'package:showcaseview/showcaseview.dart';

/// This widgets is a wrapper for the [Showcase] widget.
///
/// which renders it's child widget by itself when there is no key
/// provided.
class ShowcaseWidgetWrapper extends StatelessWidget {
  const ShowcaseWidgetWrapper({
    super.key,
    this.showCaseKey,
    required this.child,
    required this.description,
    this.radius,
    this.contentPadding = const EdgeInsets.all(PomoPomoSpacings.spacing4),
    this.overlayPadding = const EdgeInsets.all(PomoPomoSpacings.spacing4),
    this.onTargetClick,
    this.onToolTipClick,
    this.disposeOnTap,
    this.title,
  });

  final GlobalKey? showCaseKey;
  final Widget child;
  final String description;
  final String? title;
  final bool? disposeOnTap;
  final BorderRadius? radius;

  final EdgeInsets contentPadding;
  final EdgeInsets overlayPadding;

  final VoidCallback? onTargetClick;
  final VoidCallback? onToolTipClick;
  @override
  Widget build(BuildContext context) {
    if (showCaseKey == null) {
      return child;
    }
    final colorScheme = Theme.of(context).colorScheme;
    return Showcase(
      key: showCaseKey!,
      description: description,
      showcaseBackgroundColor: colorScheme.surfaceVariant,
      onTargetClick: onTargetClick,
      onToolTipClick: onToolTipClick,
      title: title,
      disposeOnTap: disposeOnTap,
      titleTextStyle: GoogleFonts.inter(
        color: colorScheme.onSurfaceVariant,
      ),
      descTextStyle: GoogleFonts.inter(
        color: colorScheme.onSurfaceVariant,
      ),
      radius: radius ?? BorderRadius.circular(12),
      child: child,
    );
  }
}
