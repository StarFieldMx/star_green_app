import 'package:flutter/material.dart';
import 'package:star_green_app/styles/star_green_colors.dart';

class StarGreenTextStyle {
  static TextStyle loadPageStyleInitStarGreen() =>
      const TextStyle(color: Colors.white, fontSize: 18);

  static TextStyle titleLoadStyle() {
    return const TextStyle(
        color: Colors.white,
        fontSize: 40,
        fontWeight: FontWeight.bold,
        fontFamily: 'Jockey One');
  }

  static TextStyle signInBtn({required double size, required Color color}) =>
      TextStyle(
        color: color,
        fontSize: size,
      );
}
