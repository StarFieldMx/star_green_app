import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:star_green_app/styles/input_style.dart';
import 'package:star_green_app/styles/star_green_colors.dart';
import 'package:star_green_app/widgets/validator_with_icon.dart';
import 'package:star_green_app/widgets/widgets.dart';

@RoutePage()
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: StarGreenColors.lowWhite,
        body: CustomScrollView(
          slivers: [
            const StarGreenSliverAppbar(),
            // SignUp
            SliverList(
                delegate: SliverChildListDelegate([
              Form(
                  child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
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
                    TextFormField(
                      decoration: InputStarGreen.defaultTextFormField(
                        labelText: 'Nombre de usuario',
                      ),
                    ),
                    const FormAlertText(
                      title: 'awawawawawawa',
                      validated: true,
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: InputStarGreen.defaultTextFormField(
                        hintText: 'example@example.com',
                        labelText: 'Correo electrónico',
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ))
            ]))
          ],
        ),
      ),
    );
  }
}
