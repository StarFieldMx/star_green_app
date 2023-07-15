import 'package:flutter/material.dart';
import 'package:star_green_app/providers/providers.dart';
import 'package:star_green_app/styles/styles.dart';

class CustomFieldValidate extends StatelessWidget {
  const CustomFieldValidate({
    Key? key,
    required this.isTapped,
    required this.uxServices,
    required this.hintText,
    required this.labelText,
    required this.validate,
    required this.uxMessage,
    required this.uxIcon,
    required this.uxColor,
    this.validator,
    this.suffixIcon,
    this.onPressed,
  }) : super(key: key);

  final bool isTapped;
  final UxAuthProvider uxServices;
  final String hintText;
  final String labelText;
  final Function(bool value) validate;
  final RegExp? validator;
  final String uxMessage;
  final IconData uxIcon;
  final Color uxColor;
  final IconData? suffixIcon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(children: [
      _SignUpField(
        hintText: hintText,
        labelText: labelText,
        isTapped: isTapped,
        validate: validate,
        validator: validator,
        icon: suffixIcon,
        onPressed: onPressed,
      ),
      const SizedBox(height: 10),
      Row(
        children: [
          GestureDetector(
            child: Icon(
              uxIcon,
              color: uxColor,
            ),
            onTap: onPressed,
          ),
          const SizedBox(width: 5),
          SizedBox(
            width: width * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  uxMessage,
                  textAlign: TextAlign.start,
                  // maxLines: 1,
                  style: StarGreenTextStyle.inputTextStyle(
                      StarGreenColors.lowGrey),
                ),
              ],
            ),
          ),
        ],
      ),
    ]);
  }
}

class _SignUpField extends StatelessWidget {
  const _SignUpField({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.validate,
    required this.isTapped,
    this.icon,
    this.validator,
    this.onPressed,
  }) : super(key: key);
  final String hintText;
  final String labelText;
  final IconData? icon;
  final RegExp? validator;
  final Function(bool value) validate;
  final bool isTapped;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.black),
      decoration: InputStarGreen.defaultTextFormField(
        hintText: hintText,
        labelText: labelText,
        suffixIcon: icon,
        // suffixIconColor: suffixIconColor,
        onPressed: onPressed,
      ),
      validator: (value) {
        return _validationFunction(value, validate, validator);
      },
      onChanged: (value) async {
        if (!isTapped) return;
        await Future.delayed(const Duration(seconds: 2));
        _validationFunction(value, validate, validator);
      },
    );
  }
}

_validationFunction(
    String? value, Function(bool value) callback, RegExp? validator) {
  if (value == null) return;

  if (validator == null) {
    if (value == "") {
      callback(false);
      return;
    } else {
      callback(true);
      return null;
    }
  }

  validator.hasMatch(value) ? callback(true) : callback(false);
}
