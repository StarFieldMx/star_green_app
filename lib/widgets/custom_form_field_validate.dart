// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:star_green_app/styles/styles.dart';

class CustomFieldValidate extends StatefulWidget {
  const CustomFieldValidate({
    Key? key,
    required this.hintText,
    required this.labelText,
    this.hasObscure = false,
    this.validator,
    this.controller,
  }) : super(key: key);

  final String hintText;
  final String labelText;
  final bool hasObscure;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
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
    return Column(children: [
      _SignUpField(
        hintText: widget.hintText,
        labelText: widget.labelText,
        isTapped: isTapped,
        callback: doSomething,
        validator: widget.validator,
        hasObscure: widget.hasObscure,
        controller: widget.controller,
      ),
      const SizedBox(height: 10),
    ]);
  }
}

class _SignUpField extends StatefulWidget {
  const _SignUpField({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.isTapped,
    required this.hasObscure,
    this.callback,
    this.validator,
    this.controller,
  }) : super(key: key);
  final String? Function(String?)? validator;
  final String hintText;
  final String labelText;
  final bool isTapped;
  final bool hasObscure;
  final void Function()? callback;
  final TextEditingController? controller;

  @override
  State<_SignUpField> createState() => _SignUpFieldState();
}

class _SignUpFieldState extends State<_SignUpField> {
  IconData eye = MdiIcons.eyeOff;
  bool isObscure = true;

  void onPressed() {
    setState(() {
      isObscure ? eye = MdiIcons.eye : eye = MdiIcons.eyeOff;
      isObscure = !isObscure;
    });

    if (widget.callback != null) {
      widget.callback!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.black),
      obscureText: widget.hasObscure ? isObscure : false,
      decoration: InputStarGreen.defaultTextFormField(
        hintText: widget.hintText,
        labelText: widget.labelText,
        suffixIcon: widget.hasObscure ? eye : null,
        suffixIconColor: StarGreenColors.greenOriginal,
        onPressedIcon: onPressed,
      ),
      controller: widget.controller,
      validator: widget.validator,
    );
  }
}
