import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_green_app/providers/signin_provider.dart';
import 'package:star_green_app/styles/styles.dart';
import 'package:star_green_app/widgets/widgets.dart';

class FormSignIn extends StatefulWidget {
  const FormSignIn({super.key});

  @override
  State<FormSignIn> createState() => _FormSignInState();
}

class _FormSignInState extends State<FormSignIn> {
  final TextEditingController inputEmail = TextEditingController();
  final TextEditingController inputPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final formProvider = Provider.of<SignInProvider>(context);
    return Form(
      // key: formProvider.formKeySignIn,
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
              controller: inputEmail,
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
              controller: inputPassword,
            ),
            const SizedBox(height: 40),
            SignInButton(
              onPressed: () async {
                await FirebaseAuth.instance
                    .signInWithEmailAndPassword(
                        email: inputEmail.text.trim(),
                        password: inputPassword.text.trim())
                    .then((value) => null)
                    // TODO: Do something on error
                    .onError((error, stackTrace) {});
                context.router.pushNamed('/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
