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
    return customTheme.copyWith(
      textTheme: GoogleFonts.interTextTheme(
        customTheme.textTheme,
      ),
    );
  }
}
