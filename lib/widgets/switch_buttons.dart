import 'package:flutter/material.dart';
import 'package:star_green_app/styles/star_green_colors.dart';

class SwitchButtons extends StatefulWidget {
  const SwitchButtons({super.key});

  @override
  State<SwitchButtons> createState() => _SwitchButtonsState();
}

class _SwitchButtonsState extends State<SwitchButtons> {
  final List<bool> _isSelected = [false, false];
  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      fillColor: StarGreenColors.lightGreen,
      borderWidth: null,
      borderRadius: BorderRadius.circular(15),
      isSelected: _isSelected,
      children: const [
        Text(
          '    Eventos    ',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          '    Mis eventos    ',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
      onPressed: (int index) {
        setState(() {
          switch (index) {
            case 0:
              _isSelected[index] = !_isSelected[index];
              _isSelected[1] = false;
              break;
            case 1:
              _isSelected[index] = !_isSelected[index];
              _isSelected[0] = false;
              break;
            default:
              _isSelected[index] = !_isSelected[index];
          }
        });
      },
    );
  }
}
