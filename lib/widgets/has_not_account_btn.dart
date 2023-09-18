import 'package:flutter/material.dart';
import 'package:star_green_app/styles/styles.dart';

class HasnotAccount extends StatelessWidget {
  final VoidCallback onPressed;

  const HasnotAccount({Key? key, required this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        '¿No tienes una cuenta?',
        style: StarGreenTextStyle.signInBtn(
            size: 18, color: StarGreenColors.lightGreen),
      ),
      onPressed: () => onPressed(),
    );
  }
}
