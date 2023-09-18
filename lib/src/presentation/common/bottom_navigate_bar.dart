import 'package:flutter/material.dart';

class BottomNavigateBar extends StatelessWidget {
  const BottomNavigateBar(
      {super.key, required this.onTap, required this.currentIndex});
  final void Function(int) onTap;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      // type: BottomNavigationBarType.shifting,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explora'),
        BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Mapa'),
      ],
      onTap: onTap,
    );
  }
}
