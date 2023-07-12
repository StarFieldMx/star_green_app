import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:star_green_app/styles/styles.dart';

class FormAlertText extends StatelessWidget {
  const FormAlertText(
      {super.key, required this.title, required this.validated});
  final String title;
  final bool? validated;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        validated == null
            ? Icon(
                MdiIcons.minusCircle,
                color: StarGreenColors.grey,
                size: 20,
              )
            : Icon(
                validated == false ? Icons.close : Icons.check,
                color: validated == false ? Colors.red : Colors.green,
                size: 20,
              ),
        const SizedBox(width: 5),
        Text(
          title,
          style: TextStyle(
              color: StarGreenColors.grey,
              fontWeight: FontWeight.w500,
              fontSize: 16),
        ),
      ],
    );
  }
}
