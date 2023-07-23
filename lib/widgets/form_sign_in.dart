import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:star_green_app/routes/auto_router_stargreen.gr.dart';
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
  final GlobalKey<FormState> formSignInKey = GlobalKey<FormState>();

  IconData eye = MdiIcons.eyeOff;
  bool isObscureEye = false;
  // Funtions
  void obscureEye() {
    setState(() {
      isObscureEye = !isObscureEye;
      if (!isObscureEye) {
        eye = MdiIcons.eye;
      } else {
        eye = MdiIcons.eyeOff;
      }
    });
  }

  bool isValidForm() {
    final state = formSignInKey.currentState?.validate();
    if (state == null || state == false) {
      return false;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formSignInKey,
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
              obscureText: isObscureEye,
              decoration: InputStarGreen.signInInputDeco(
                  hintText: '*******',
                  labelText: 'Contraseña',
                  suffixIcon: eye,
                  suffixIconColor: StarGreenColors.greenEye,
                  onPressed: () => obscureEye()),
              controller: inputPassword,
            ),
            const SizedBox(height: 40),
            SignInButton(onPressed: () async {
              if (!isValidForm()) return;
              await FirebaseAuth.instance
                  .signInWithEmailAndPassword(
                      email: inputEmail.text.trim(),
                      password: inputPassword.text.trim())
                  .then((value) => null)
                  // TODO: Do something on error
                  .onError((error, stackTrace) {});
              context.router.replaceAll([const AuthLayout()]);
            })
          ],
        ),
      ),
    );
  }
}
