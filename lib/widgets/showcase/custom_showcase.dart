import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';
import 'package:showcaseview/showcaseview.dart';

class CustomShowCase extends StatelessWidget {
  const CustomShowCase({
    super.key,
    required this.showCaseKey,
    required this.child,
    required this.description,
  });

  final GlobalKey showCaseKey;

  final Widget child;
  final String description;
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Showcase(
      key: showCaseKey,
      contentPadding: const EdgeInsets.all(PomoPomoSpacings.spacing4),
      overlayPadding: const EdgeInsets.all(PomoPomoSpacings.spacing4),
      description: description,
      showcaseBackgroundColor: colorScheme.surfaceVariant,
      descTextStyle: GoogleFonts.inter(
        color: colorScheme.onSurfaceVariant,
      ),
      radius: BorderRadius.circular(12),
      child: child,
    );
  }
}
