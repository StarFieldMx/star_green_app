import 'package:flutter/material.dart';

class StarGreenTextStyle {
  static TextStyle loadPageStyleInitStarGreen() =>
      const TextStyle(color: Colors.white, fontSize: 18);

  static TextStyle titleStarGreen({double? size}) {
    return TextStyle(
        color: Colors.white,
        fontSize: size ?? 40,
        fontWeight: FontWeight.bold,
        fontFamily: 'Jockey One');
  }

  static TextStyle signInBtn({required double size, required Color color}) =>
      TextStyle(
        color: color,
        fontSize: size,
      );
}
