import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomo_pomo/widgets/widgets.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';
import 'package:reactive_forms/reactive_forms.dart';

class TaskCreateForm extends StatelessWidget {
  const TaskCreateForm({super.key});

  @override
  Widget build(BuildContext context) {
    final form = ReactiveForm.of(context) as FormGroup?;

    return Column(
      children: [
        _TextInputField(
          textInputAction: TextInputAction.next,
          formControlName: 'title',
          label: 'Title',
          hintText: 'Enter title...',
          onSubmitted: () => form?.focus('description'),
        ),
        PomoPomoSpacers.vSpacing4,
        const _TextInputField(
          formControlName: 'description',
          label: 'Short Description',
          hintText: 'Enter short description...',
        ),
        PomoPomoSpacers.vSpacing4,
        const _PomodoroCountInputField()
      ],
    );
  }
}

class _FormField extends StatelessWidget {
  const _FormField({
    this.label,
    this.labelText,
    required this.child,
  });

  final Widget child;
  final Widget? label;
  final String? labelText;

  Widget _buildLabel(BuildContext context) {
    if (labelText != null) {
      return Text(
        labelText!,
        style: GoogleFonts.inter(
          color: Theme.of(context).colorScheme.onSurface,
          fontWeight: FontWeight.bold,
        ),
      );
    }
    if (label != null) {
      return label!;
    }
    return const SizedBox();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(
        horizontal: PomoPomoSpacings.spacing4,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildLabel(context),
          PomoPomoSpacers.vSpacing4,
          child,
        ],
      ),
    );
  }
}

class _PomodoroCountInputField extends StatelessWidget {
  const _PomodoroCountInputField();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return _FormField(
      label: ReactiveValueListenableBuilder<double>(
        formControlName: 'pomodoroCount',
        builder: (context, control, child) {
          final value = control.value?.floor() ?? 0;
          return Text(
            'Pomodoro Count($value)',
            style: GoogleFonts.inter(
              color: Theme.of(context).colorScheme.onSurface,
              fontWeight: FontWeight.bold,
            ),
          );
        },
      ),
      child: ReactiveRatingBar(
        formControlName: 'pomodoroCount',
        itemCount: 12,
        itemPadding: const EdgeInsets.only(
          right: PomoPomoSpacings.spacing4,
          top: PomoPomoSpacings.spacing4,
        ),
        wrapAlignment: WrapAlignment.spaceEvenly,
        ratingWidget: RatingWidget(
          empty: Icon(
            FontAwesomeIcons.stopwatch,
            color: colorScheme.surfaceVariant,
          ),
          full: Icon(
            FontAwesomeIcons.stopwatch,
            color: colorScheme.secondary,
          ),
          half: const Icon(FontAwesomeIcons.stopwatch),
        ),
      ),
    );
  }
}

class _TextInputField extends StatelessWidget {
  const _TextInputField({
    required this.label,
    required this.hintText,
    required this.formControlName,
    this.textInputAction,
    this.onSubmitted,
  });

  final String label;
  final String hintText;
  final String formControlName;
  final TextInputAction? textInputAction;
  final Function()? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return _FormField(
      labelText: label,
      child: ReactiveTextField<String>(
        onSubmitted: onSubmitted,
        textInputAction: textInputAction,
        formControlName: formControlName,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          fillColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}
