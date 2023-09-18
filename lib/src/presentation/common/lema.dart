import 'package:flutter/material.dart';

Text lemaStarGreen(
        {double? size,
        String lema = 'Por un planeta que brille como una estrella.'}) =>
    Text(
      lema,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: size ?? 14,
        fontFamily: 'Jockey One',
      ),
    );
