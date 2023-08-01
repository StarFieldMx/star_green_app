import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:star_green_app/styles/styles.dart';

ThemeData myTheme = ThemeData(
  // fontFamily: GoogleFonts.eduSaBeginnerTextTheme,
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
  textTheme: GoogleFonts.eduSaBeginnerTextTheme(),
);
