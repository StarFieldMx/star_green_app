import 'package:flutter/material.dart';
import 'package:star_green_app/styles/styles.dart';

ThemeData myThemeDark = ThemeData.dark().copyWith(
  primaryColor: StarGreenColors.green,
  progressIndicatorTheme: ProgressIndicatorThemeData(
      circularTrackColor: Colors.white,
      linearMinHeight: 12,
      linearTrackColor: Colors.white,
      color: StarGreenColors.green),
);

ThemeData myTheme = ThemeData(
    fontFamily: 'Inter',
    primaryColor: StarGreenColors.green,
    hintColor: Colors.white,
    colorScheme: const ColorScheme.light().copyWith(
      primary: StarGreenColors.green,
      background: StarGreenColors.lowWhite,
    ),
    scaffoldBackgroundColor: Colors.white,
    progressIndicatorTheme: ProgressIndicatorThemeData(
      circularTrackColor: Colors.white,
      linearMinHeight: 12,
      linearTrackColor: Colors.white,
      color: StarGreenColors.green,
    ),
    textTheme: const TextTheme(
        bodyLarge: TextStyle(
      color: Colors.white,
      fontSize: 45,
    )));
