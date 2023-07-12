import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_green_app/providers/signin_provider.dart';
import 'package:star_green_app/styles/styles.dart';

class FormSignIn extends StatelessWidget {
  const FormSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final formProvider = Provider.of<SignInProvider>(context);
    return Form(
      key: formProvider.formKeySignIn,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            TextFormField(
              decoration: InputStarGreen.signInInputDeco(
                hintText: 'example@example.com',
                labelText: 'Correo electrónico',
              ),
              onChanged: (value) {
                formProvider.email = value;
              },
            ),
            const SizedBox(height: 30),
            TextFormField(
              obscureText: formProvider.isObscured,
              decoration: InputStarGreen.signInInputDeco(
                  hintText: '*******',
                  labelText: 'Contraseña',
                  suffixIcon: formProvider.eye,
                  suffixIconColor: StarGreenColors.greenEye,
                  onPressed: () => formProvider.tappedEye()),
              onChanged: (value) {
                formProvider.password = value;
              },
            ),
          ],
        ),
      ),
    );
  }
}
