import 'package:flutter/material.dart';
import 'package:star_green_app/styles/styles.dart';

class SignInButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SignInButton({Key? key, required this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 300,
      height: 60,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: StarGreenColors.greenButton,
      child: Text(
        'Iniciar sesión',
        style: StarGreenTextStyle.signInBtn(size: 22, color: Colors.white),
      ),
      onPressed: () => onPressed(),
    );
  }
}
