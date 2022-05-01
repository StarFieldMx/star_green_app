import 'package:flutter/material.dart';
import 'package:star_green_app/styles/styles.dart';

class HasnotAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: StarGreenColors.lowWhite,
      child: Text(
        '¿No tienes una cuenta?',
        style: StarGreenTextStyle.signInBtn(
            size: 18, color: StarGreenColors.lowGreen),
      ),
      onPressed: () {},
    );
  }
}
