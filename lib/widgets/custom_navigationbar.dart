import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      elevation: 0,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.map_outlined), label: 'Mapa'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.compass_calibration_outlined,
            ),
            label: 'Direcciones')
      ],
    );
  }
}
