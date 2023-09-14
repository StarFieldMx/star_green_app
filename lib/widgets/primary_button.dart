import 'package:flutter/material.dart';
import 'package:star_green_app/styles/styles.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const PrimaryButton({Key? key, required this.onPressed, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialButton(
      minWidth: size.width * 0.6,
      height: size.height * 0.055,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: StarGreenColors.greenButton,
      child: Text(
        text,
        style: StarGreenTextStyle.signInBtn(size: 20, color: Colors.white),
      ),
      onPressed: () {
        FocusManager.instance.primaryFocus?.unfocus();
        onPressed();
      },
    );
  }
}
