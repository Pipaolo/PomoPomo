import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomo_pomo/router/app_router.dart';
import 'package:pomo_pomo/widgets/showcase/showcase.dart';

class PomodoroTimerViewTaskButton extends StatelessWidget {
  const PomodoroTimerViewTaskButton({
    super.key,
    this.showCaseKey,
  });

  final GlobalKey? showCaseKey;

  @override
  Widget build(BuildContext context) {
    return ShowcaseWidgetWrapper(
      showCaseKey: showCaseKey,
      description: 'View your tasks',
      child: ElevatedButton(
        onPressed: () => AutoRouter.of(context).push(const TaskListRoute()),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(99),
          ),
        ),
        child: Text(
          'View Tasks'.toUpperCase(),
          style: GoogleFonts.inter(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
