import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_green_app/providers/providers.dart';
import 'package:star_green_app/styles/styles.dart';
import 'package:star_green_app/widgets/widgets.dart';
import 'package:star_green_app/validators/validators.dart';

class FormSignUp extends StatelessWidget {
  const FormSignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uxServices = Provider.of<UxAuthProvider>(context);
    final formProvider = Provider.of<FormProvider>(context, listen: false);
    final isTapped =
        Provider.of<UxAuthProvider>(context, listen: false).isTapped;
    return Form(
      key: formProvider.formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            CustomFieldValidate(
              isTapped: isTapped,
              uxServices: uxServices,
              hintText: 'annie98',
              labelText: 'Nombre de usuario',
              validate: Provider.of<UxAuthProvider>(context, listen: false)
                  .uxMessageUser,
              uxColor: uxServices.iconColor,
              uxIcon: uxServices.userIcon,
              uxMessage: uxServices.messageUser,
            ),
            const SizedBox(height: 15),
            CustomFieldValidate(
              isTapped: isTapped,
              uxServices: uxServices,
              hintText: 'example@gmail.com',
              labelText: 'Correo electrónico',
              validate: Provider.of<UxAuthProvider>(context, listen: false)
                  .uxMessageEmail,
              uxColor: uxServices.emailIconColor,
              uxIcon: uxServices.emailIcon,
              uxMessage: uxServices.messageEmail,
              validator: regExpEmail,
            ),
            const SizedBox(height: 15),
            CustomFieldValidate(
              isTapped: isTapped,
              uxServices: uxServices,
              hintText: '******',
              labelText: 'Contraseña',
              validate: Provider.of<UxAuthProvider>(context, listen: false)
                  .uxMessagePassword,
              uxColor: uxServices.passwordIconColor,
              uxIcon: uxServices.passwordIcon,
              uxMessage: uxServices.messagesPassword,
              // validator: validatorEmail,
            ),
            MaterialButton(
              onPressed: () {
                formProvider.signUp();
                uxServices.isTapped = true;
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
