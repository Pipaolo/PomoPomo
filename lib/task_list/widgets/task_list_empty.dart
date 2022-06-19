import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';

class TaskListEmpty extends StatelessWidget {
  const TaskListEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: PomoPomoSpacings.spacing8,
        ),
        child: Text(
          'You currently have no tasks, start creating now!',
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontStyle: FontStyle.italic,
            fontSize: 16,
            color: Theme.of(context).colorScheme.onSurface,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
