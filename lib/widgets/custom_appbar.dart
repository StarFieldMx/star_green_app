import 'package:flutter/material.dart';
import 'package:star_green_app/styles/styles.dart';
import 'package:star_green_app/widgets/widgets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height * 0.15,
      decoration: BoxDecoration(
          color: StarGreenColors.greenOriginal,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          boxShadow: const [
            BoxShadow(
              blurRadius: 10,
              spreadRadius: 0,
              offset: Offset(0, 1),
            ),
          ]),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(Icons.arrow_back_rounded, size: 40),
            ),
            top: 5,
            left: 15,
          ),
          Positioned(
            child: StarGreenLogo(
              width: size.width * 0.15,
            ),
            top: size.height * 0.0001,
          ),
          Positioned(
            child: const TextTitle(
              size: 50,
            ),
            top: size.height * 0.065,
          ),
        ],
      ),
    );
  }
}
