import 'package:flutter/material.dart';
import 'package:star_green_app/styles/star_green_colors.dart';

class InputStarGreen {
  static InputDecoration authInputDecoration({
    required String hintText,
    required String labelText,
    VoidCallback? onPressed,
    Color? prefixIconColor,
    Color? suffixIconColor,
    IconData? prefixIcon,
    IconData? suffixIcon,
  }) {
    return InputDecoration(
      helperStyle: TextStyle(color: StarGreenColors.lowWhite),
      hintStyle: TextStyle(color: StarGreenColors.lowWhite),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.5),
        borderSide: const BorderSide(color: Colors.white, width: 2),
      ),
      focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2)),
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
    VoidCallback? onPressed,
    Color? prefixIconColor,
    Color? suffixIconColor,
    IconData? prefixIcon,
    IconData? suffixIcon,
  }) {
    return InputDecoration(
      hintStyle: TextStyle(color: StarGreenColors.grey),
      filled: true,
      fillColor: StarGreenColors.lightgrey,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.5),
        borderSide:
            BorderSide(color: StarGreenColors.grey.withOpacity(0.6), width: 2),
      ),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: StarGreenColors.greenEye, width: 2)),
      hintText: hintText,
      labelText: labelText,
      labelStyle: const TextStyle(color: Colors.black),
      suffixIcon: suffixIcon != null
          ? IconButton(
              icon: Icon(suffixIcon, color: suffixIconColor ?? Colors.black),
              onPressed: onPressed,
            )
          : null,
      prefixIcon: prefixIcon != null
          ? Icon(prefixIcon, color: prefixIconColor ?? Colors.black)
          : null,
    );
  }
}
