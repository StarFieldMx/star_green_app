import 'package:flutter/material.dart';
import 'package:star_green_app/styles/star_green_colors.dart';

class InputStarGreen {
  static InputDecoration signInInputDeco({
    required String hintText,
    required String labelText,
    VoidCallback? onPressed,
    Color? prefixIconColor,
    Color? suffixIconColor,
    IconData? prefixIcon,
    IconData? suffixIcon,
  }) {
    return InputDecoration(
      hintStyle: TextStyle(color: StarGreenColors.lightGreen),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.5),
        borderSide: const BorderSide(color: Colors.white, width: 2),
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.5),
          borderSide: const BorderSide(color: Colors.white, width: 2)),
      hintText: hintText,
      labelText: labelText,
      labelStyle: const TextStyle(color: Colors.white),
      suffixIcon: suffixIcon != null
          ? IconButton(
              icon: Icon(suffixIcon, color: suffixIconColor ?? Colors.white),
              onPressed: onPressed,
            )
          : null,
      prefixIcon: prefixIcon != null
          ? Icon(prefixIcon, color: prefixIconColor ?? Colors.white)
          : null,
    );
  }

  static InputDecoration defaultTextFormField({
    required String labelText,
    String? hintText,
    VoidCallback? onPressedIcon,
    Color? prefixIconColor,
    Color? suffixIconColor,
    IconData? prefixIcon,
    IconData? suffixIcon,
    InputBorder? errorBorder,
  }) {
    return InputDecoration(
      hintStyle: TextStyle(color: StarGreenColors.grey),
      filled: true,
      fillColor: StarGreenColors.lightgrey,
      border: _defaultBorder(),
      hintText: hintText,
      labelText: labelText,
      errorMaxLines: 2,
      labelStyle: const TextStyle(color: Colors.black),
      enabledBorder: _defaultBorder(color: Colors.grey),
      suffixIcon: suffixIcon != null
          ? IconButton(
              icon: Icon(suffixIcon, color: suffixIconColor ?? Colors.black),
              onPressed: onPressedIcon,
            )
          : null,
      prefixIcon: prefixIcon != null
          ? Icon(prefixIcon, color: prefixIconColor ?? Colors.black)
          : null,
      errorBorder: _defaultBorder(color: Colors.red),
    );
  }

  static OutlineInputBorder _defaultBorder({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.5),
      borderSide: BorderSide(
          color: color ?? StarGreenColors.grey.withOpacity(0.6), width: 2),
    );
  }
}
