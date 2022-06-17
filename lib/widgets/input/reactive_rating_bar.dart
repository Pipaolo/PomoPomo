import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ReactiveRatingBar extends ReactiveFormField<double, double> {
  ReactiveRatingBar({
    super.key,
    required String super.formControlName,
    required RatingWidget ratingWidget,
    bool allowHalfRating = false,
    Axis direction = Axis.horizontal,
    int itemCount = 5,
    EdgeInsets itemPadding = EdgeInsets.zero,
    double itemSize = 38,
    double minRating = 0,
    double? maxRating,
    WrapAlignment wrapAlignment = WrapAlignment.start,
    TextDirection? textDirection,
    bool updatedOnDrag = false,
    bool glow = true,
    double glowRadius = 2,
    Color? glowColor,
    bool ignoreGestures = false,
    bool tapOnlyMode = false,
    Color? unratedColor,
  }) : super(
          builder: (ReactiveFormFieldState<double, double> field) {
            return RatingBar(
              initialRating: field.value ?? 0,
              ratingWidget: ratingWidget,
              allowHalfRating: allowHalfRating,
              direction: direction,
              glow: glow,
              glowRadius: glowRadius,
              glowColor: glowColor,
              ignoreGestures: ignoreGestures,
              tapOnlyMode: tapOnlyMode,
              unratedColor: unratedColor,
              itemCount: itemCount,
              itemPadding: itemPadding,
              itemSize: itemSize,
              maxRating: maxRating,
              minRating: minRating,
              textDirection: textDirection,
              wrapAlignment: wrapAlignment,
              updateOnDrag: updatedOnDrag,
              onRatingUpdate: field.didChange,
            );
          },
        );

  @override
  ReactiveFormFieldState<double, double> createState() =>
      ReactiveFormFieldState<double, double>();
}
