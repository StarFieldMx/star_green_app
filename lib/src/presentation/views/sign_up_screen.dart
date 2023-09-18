import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:star_green_app/src/config/styles/star_green_colors.dart';
import 'package:star_green_app/src/presentation/common/common.dart';

@RoutePage()
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const StarGreenSliverAppbar(),
            // SignUp
            SliverList(
                delegate: SliverChildListDelegate(
              [
                Center(
                  child: Column(
                    children: [
                      const Text(
                        'Registro de usuario',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Ingresa los datos que se te piden',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: StarGreenColors.grey,
                        ),
                      ),
                      const SizedBox(height: 25)
                    ],
                  ),
                ),
                const FormSignUp(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
