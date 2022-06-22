import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:json_theme/json_theme.dart';
import 'package:pomo_pomo_theme/src/consts/consts.dart';

/// {@template pomo_pomo_theme}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class PomoPomoTheme {
  /// {@macro pomo_pomo_theme}
  const PomoPomoTheme();

  static Future<ThemeData?> _loadTheme() async {
    final themeStr = await rootBundle.loadString('assets/appainter_theme.json');
    final dynamic themeJson = jsonDecode(themeStr);
    final theme = ThemeDecoder.decodeThemeData(themeJson);

    return theme;
  }

  /// Builds the [ThemeData] for the application.
  static Future<ThemeData> build() async {
    final customTheme = await _loadTheme();

    if (customTheme == null) {
      return ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: PomoPomoColors.primary),
        textTheme: GoogleFonts.interTextTheme(),
      );
    }
    final colorScheme = customTheme.colorScheme;
    return customTheme.copyWith(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(64, 48),
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: colorScheme.surfaceVariant,
        contentTextStyle: GoogleFonts.inter(
          color: colorScheme.onSurfaceVariant,
        ),
      ),
      scrollbarTheme: ScrollbarThemeData(
        thumbColor: MaterialStateProperty.all(colorScheme.onSurfaceVariant),
        trackColor: MaterialStateProperty.all(colorScheme.surfaceVariant),
      ),
      textTheme: GoogleFonts.interTextTheme(
        customTheme.textTheme,
      ),
    );
  }
}
