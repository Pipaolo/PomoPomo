import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pomo_pomo/task_edit/bloc/task_edit_bloc.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';
import 'package:reactive_forms/reactive_forms.dart';

class TaskEditSubmitButton extends StatelessWidget {
  const TaskEditSubmitButton({super.key});

  void _onSubmitPressed(BuildContext context) {
    context.read<TaskEditBloc>().add(
          const TaskEditEvent.submitted(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveFormConsumer(
      builder: (context, form, _) {
        return Container(
          width: double.maxFinite,
          padding: const EdgeInsets.symmetric(
            horizontal: PomoPomoSpacings.spacing8,
            vertical: PomoPomoSpacings.spacing5,
          ),
          child: ElevatedButton(
            onPressed: form.invalid ? null : () => _onSubmitPressed(context),
            child: const Text(
              'Save',
            ),
          ),
        );
      },
    );
  }
}
