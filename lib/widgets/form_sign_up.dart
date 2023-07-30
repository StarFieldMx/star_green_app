import 'package:art_sweetalert/art_sweetalert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:star_green_app/providers/formkeys.dart';
import 'package:star_green_app/utils/constants.dart';
import 'package:star_green_app/widgets/widgets.dart';
import 'package:form_field_validator/form_field_validator.dart';

class FormSignUp extends StatefulWidget {
  const FormSignUp({
    Key? key,
  }) : super(key: key);

  @override
  State<FormSignUp> createState() => _FormSignUpState();
}

class _FormSignUpState extends State<FormSignUp> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  bool isValidForm() => FormKeys.signUpKey.currentState?.validate() ?? false;

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
    FocusManager.instance.primaryFocus?.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    final passwordValidator = MultiValidator([
      RequiredValidator(errorText: dangerAlerts[3]),
      MinLengthValidator(8, errorText: dangerAlerts[4]),
      PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: dangerAlerts[5]),
      PatternValidator(r'(?=.*?[1234567890])', errorText: dangerAlerts[5])
    ]);

    return Form(
      key: FormKeys.signUpKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            CustomFieldValidate(
              hintText: 'annie98',
              labelText: 'Username',
              validator: RequiredValidator(errorText: dangerAlerts[0]),
            ),
            CustomFieldValidate(
              hintText: 'example@gmail.com',
              labelText: 'Correo electrónico',
              controller: email,
              validator: MultiValidator([
                EmailValidator(errorText: dangerAlerts[1]),
                RequiredValidator(errorText: dangerAlerts[2]),
              ]),
            ),
            CustomFieldValidate(
              hintText: '******',
              labelText: 'Contraseña',
              hasObscure: true,
              validator: passwordValidator,
              controller: password,
            ),
            CustomFieldValidate(
              hintText: '******',
              labelText: 'Confirmar contraseña',
              hasObscure: true,
              validator: (val) => MatchValidator(errorText: dangerAlerts[6])
                  .validateMatch(val!, password.text),
            ),
            const ProgressValidatePassword(value: 0.5),
            const SizedBox(height: 20),
            PrimaryButton(
              onPressed: () async {
                FocusManager.instance.primaryFocus?.unfocus();
                if (!isValidForm()) return;
                _registerFirebase(
                    email: email, password: password, context: context);
              },
              text: 'Register',
            ),
          ],
        ),
      ),
    );
  }
}

void _registerFirebase(
    {required TextEditingController email,
    required TextEditingController password,
    required BuildContext context}) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: email.text.trim(), password: password.text.trim());
  } on FirebaseAuthException catch (e) {
    if (e.code == 'email-already-in-use') {
      ArtSweetAlert.show(
          context: context,
          artDialogArgs: ArtDialogArgs(
              type: ArtSweetAlertType.info,
              title: "Email in use",
              text: "The email is already in use please enter another email"));
    }
  } catch (e) {
    ArtSweetAlert.show(
        context: context,
        artDialogArgs: ArtDialogArgs(
            type: ArtSweetAlertType.danger,
            title: "Unexpected error",
            text: e.toString()));
  }
}
