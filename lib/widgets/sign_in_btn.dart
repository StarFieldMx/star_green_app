import 'package:flutter/material.dart';
import 'package:star_green_app/styles/styles.dart';

class SignInButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: StarGreenColors.greenButton,
      child: Text(
        'Iniciar sesión',
        style: StarGreenTextStyle.signInBtn(size: 22, color: Colors.white),
      ),
      onPressed: () {},
    );
  }
}
