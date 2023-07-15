import 'package:flutter/material.dart';
import 'package:star_green_app/styles/star_green_colors.dart';

class ProgressValidatePassword extends StatelessWidget {
  const ProgressValidatePassword({super.key, required this.value});
  final double value;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width * 0.8,
      child: LinearProgressIndicator(
        minHeight: 8,
        value: value,
        backgroundColor: StarGreenColors.lightgrey,
        color: Colors.green,
      ),
    );
  }
}
