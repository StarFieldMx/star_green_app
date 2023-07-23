import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:star_green_app/styles/styles.dart';

class CustomFieldValidate extends StatefulWidget {
  const CustomFieldValidate({
    Key? key,
    required this.hintText,
    required this.labelText,
  }) : super(key: key);

  final String hintText;
  final String labelText;

  @override
  State<CustomFieldValidate> createState() => _CustomFieldValidateState();
}

class _CustomFieldValidateState extends State<CustomFieldValidate> {
  // Mutable
  String textAlert = '';
  bool isTapped = false;
  void doSomething() {}
  IconData icon = MdiIcons.minus;
  Color uxColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(children: [
      _SignUpField(
        hintText: widget.hintText,
        labelText: widget.labelText,
        isTapped: isTapped,
        onPressed: doSomething,
        icon: icon,
        validate: (bool value) {},
      ),
      const SizedBox(height: 10),
      Row(
        children: [
          GestureDetector(
            child: Icon(
              icon,
              color: uxColor,
            ),
            // onTap: doSomething,
          ),
          const SizedBox(width: 5),
          SizedBox(
            width: width * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  textAlert,
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
    required this.icon,
    this.onPressed,
    // ignore: unused_element
    this.validator,
  }) : super(key: key);

  final String hintText;
  final String labelText;
  final IconData icon;
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
