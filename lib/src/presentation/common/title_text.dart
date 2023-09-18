import 'package:flutter/material.dart';
import 'package:star_green_app/src/config/styles/styles.dart';

class TextTitle extends StatelessWidget {
  const TextTitle({Key? key, this.size}) : super(key: key);
  final double? size;
  @override
  Widget build(BuildContext context) {
    return Text(
      'StarGreen',
      style: StarGreenTextStyle.titleStarGreen(size: size),
      textAlign: TextAlign.center,
    );
  }
}
