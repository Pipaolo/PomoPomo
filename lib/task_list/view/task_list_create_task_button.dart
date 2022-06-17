import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomo_pomo/router/app_router.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';

class TaskListCreateTaskButton extends StatelessWidget {
  const TaskListCreateTaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: PomoPomoSpacings.spacing8,
        vertical: PomoPomoSpacings.spacing4,
      ),
      child: ElevatedButton(
        onPressed: () => AutoRouter.of(context).push(const TaskCreateRoute()),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(FontAwesomeIcons.plus),
            PomoPomoSpacers.hSpacing2,
            Text(
              'Create new task',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
