import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_green_app/providers/form_provider.dart';
import 'package:star_green_app/styles/styles.dart';

class FormSign extends StatelessWidget {
  const FormSign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formProvider = Provider.of<FormProvider>(context);
    return Form(
      key: formProvider.formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            TextFormField(
              decoration: InputStarGreen.authInputDecoration(
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
              decoration: InputStarGreen.authInputDecoration(
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
