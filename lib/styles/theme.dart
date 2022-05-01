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
  progressIndicatorTheme: ProgressIndicatorThemeData(
      circularTrackColor: Colors.white,
      linearMinHeight: 12,
      linearTrackColor: Colors.white,
      color: StarGreenColors.green),
);
