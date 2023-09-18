import 'package:flutter/material.dart';
import 'package:star_green_app/styles/styles.dart';

class AnchorButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final Color color;

  const AnchorButton({Key? key, required this.onPressed, required this.title, required this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        title,
        style: StarGreenTextStyle.boldAnchorBtn(
            size: 18, color: color),
      ),
      onPressed: () => onPressed(),
    );
  }
}
