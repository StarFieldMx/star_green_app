import 'package:art_sweetalert/art_sweetalert.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:star_green_app/src/config/routes/auto_router_stargreen.gr.dart';
import 'package:star_green_app/src/config/styles/styles.dart';
import 'package:star_green_app/src/utils/validators/validators.dart';
import 'package:star_green_app/src/presentation/common/common.dart';

class FormSignIn extends StatefulWidget {
  const FormSignIn({super.key});

  @override
  State<FormSignIn> createState() => _FormSignInState();
}

class _FormSignInState extends State<FormSignIn> {
  final TextEditingController inputEmail = TextEditingController();
  final TextEditingController inputPassword = TextEditingController();
  final GlobalKey<FormState> formSignInKey = GlobalKey<FormState>();
  final TextStyle _inputStyle = const TextStyle(
    color: Colors.white,
    fontSize: 16,
  );

  IconData eye = MdiIcons.eyeOff;
  bool isObscureEye = true;
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

  Future<bool> _signInFirebase(
      {required TextEditingController email,
      required TextEditingController password,
      required BuildContext context}) async {
    bool loggin = false;
    try {
      FocusManager.instance.primaryFocus?.unfocus();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email.text.trim(), password: password.text.trim());
      loggin = true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        ArtSweetAlert.show(
            context: context,
            artDialogArgs: ArtDialogArgs(
                type: ArtSweetAlertType.danger,
                title: "User not found",
                text: "The credentials are incorrect"));
      }
    }
    return loggin;
  }

  @override
  Widget build(BuildContext context) {
    final router = context.router;
    return Form(
      key: formSignInKey,
      autovalidateMode: AutovalidateMode.disabled,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            TextFormField(
              cursorColor: Colors.white,
              style: _inputStyle,
              decoration: InputStarGreen.signInInputDeco(
                hintText: 'example@example.com',
                labelText: 'Correo electrónico',
              ),
              validator: emailValidator,
              controller: inputEmail,
            ),
            const SizedBox(height: 30),
            TextFormField(
              cursorColor: Colors.white,
              style: _inputStyle,
              obscureText: isObscureEye,
              decoration: InputStarGreen.signInInputDeco(
                  hintText: '*******',
                  labelText: 'Contraseña',
                  suffixIcon: eye,
                  suffixIconColor: StarGreenColors.greenEye,
                  onPressed: () => obscureEye()),
              controller: inputPassword,
              validator: passwordValidator,
            ),
            const SizedBox(height: 40),
            PrimaryButton(
              onPressed: () async {
                if (!isValidForm()) return;
                final isLogged = await _signInFirebase(
                    context: context,
                    email: inputEmail,
                    password: inputPassword);
                if (isLogged) router.replace(AuthLayout());
              },
              text: 'Iniciar sesión',
            )
          ],
        ),
      ),
    );
  }
}
