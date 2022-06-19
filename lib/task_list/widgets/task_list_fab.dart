import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pomo_pomo/router/app_router.dart';

class TaskListFab extends StatelessWidget {
  const TaskListFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: 'task-list-fab',
      onPressed: () => AutoRouter.of(context).push(const TaskCreateRoute()),
      child: const Icon(FontAwesomeIcons.plus),
    );
  }
}
