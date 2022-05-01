import 'package:flutter/material.dart';

class StarGreenLogo extends StatelessWidget {
  const StarGreenLogo({
    Key? key,
    this.width,
  }) : super(key: key);
  final double? width;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: width ?? size.width * 0.61,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(360),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              // blurStyle: BlurStyle.outer,
              offset: Offset(0.0, 1.5),
            ),
          ]),
      child: const Image(
        image: AssetImage('assets/images/Logo.png'),
      ),
    );
  }
}
