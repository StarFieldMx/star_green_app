import 'package:flutter/material.dart';
import 'package:star_green_app/styles/styles.dart';
import 'package:star_green_app/widgets/widgets.dart';

class FormSignUp extends StatelessWidget {
  const FormSignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: formProvider.formKeySignUp,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const CustomFieldValidate(
              hintText: 'annie98',
              labelText: 'Nombre de usuario',
            ),
            const SizedBox(height: 15),
            const CustomFieldValidate(
              hintText: 'example@gmail.com',
              labelText: 'Correo electrónico',
              // validator: regExpEmail,
            ),
            const SizedBox(height: 15),
            const CustomFieldValidate(
              hintText: '******',
              labelText: 'Contraseña',
              // TODO: Validate first until upload to firebase
              // validator: passwordValidator,
            ),
            const ProgressValidatePassword(value: 0.5),
            MaterialButton(
              onPressed: () {
                // TODO: Implement signUp
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
