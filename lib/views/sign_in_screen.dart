import 'package:flutter/material.dart';
import 'package:star_green_app/styles/styles.dart';
import 'package:star_green_app/views/views.dart';
import 'package:star_green_app/widgets/widgets.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StarGreenColors.green,
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 90),
            const StarGreenLogo(
              width: 208,
            ),
            const SizedBox(height: 25),
            Text(
              'StarGreen',
              style: StarGreenTextStyle.titleLoadStyle(),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            lemaStarGreen(size: 22),
            const SizedBox(height: 20),
            FormSign(),
            const SizedBox(height: 40),
            SignInButton(),
            const SizedBox(height: 40),
            HasnotAccount(),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
