import 'package:art_sweetalert/art_sweetalert.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:star_green_app/providers/formkeys.dart';
import 'package:star_green_app/styles/styles.dart';
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
      RequiredValidator(errorText: 'password is required'),
      MinLengthValidator(8,
          errorText: 'password must be at least 8 digits long'),
      PatternValidator(r'(?=.*?[#?!@$%^&*-])',
          errorText: 'passwords must have at least one special character'),
      PatternValidator(r'(?=.*?[1234567890])',
          errorText: 'passwords must have at least one number')
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
              validator: RequiredValidator(errorText: 'Username is required'),
            ),
            const SizedBox(height: 15),
            CustomFieldValidate(
              hintText: 'example@gmail.com',
              labelText: 'Correo electrónico',
              controller: email,
              validator: MultiValidator([
                EmailValidator(errorText: 'put a valid email.'),
                RequiredValidator(errorText: 'Email is required'),
              ]),
            ),
            const SizedBox(height: 15),
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
              validator: (val) =>
                  MatchValidator(errorText: 'passwords do not match')
                      .validateMatch(val!, password.text),
            ),
            const ProgressValidatePassword(value: 0.5),
            MaterialButton(
              onPressed: () async {
                // TODO: Implement signUp
                FocusManager.instance.primaryFocus?.unfocus();
                if (!isValidForm()) return;
                _registerFirebase(
                    email: email, password: password, context: context);
              },
              child: Text(
                'Picale we',
                style:
                    StarGreenTextStyle.inputTextStyle(StarGreenColors.lowGrey),
              ),
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
