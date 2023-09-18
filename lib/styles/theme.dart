import 'package:flutter/material.dart';
import 'package:star_green_app/styles/styles.dart';

ThemeData myThemeDark = ThemeData.dark().copyWith(
  primaryColor: StarGreenColors.greenOriginal,
  progressIndicatorTheme: ProgressIndicatorThemeData(
      circularTrackColor: Colors.white,
      linearMinHeight: 12,
      linearTrackColor: Colors.white,
      color: StarGreenColors.greenOriginal),
);

ThemeData myTheme = ThemeData(
  fontFamily: 'Inter',
  primaryColor: StarGreenColors.greenOriginal,
  hintColor: Colors.white,
  colorScheme: const ColorScheme.light().copyWith(
    primary: StarGreenColors.greenOriginal,
    background: StarGreenColors.lightGreen,
  ),
  scaffoldBackgroundColor: Colors.white,
  progressIndicatorTheme: ProgressIndicatorThemeData(
    circularTrackColor: Colors.white,
    linearMinHeight: 12,
    linearTrackColor: Colors.white,
    color: StarGreenColors.greenOriginal,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: Colors.white,
      fontSize: 45,
    ),
    labelSmall: TextStyle(fontSize: 16),
    bodySmall: TextStyle(fontSize: 16),
  ),
);
