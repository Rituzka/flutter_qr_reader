import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
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
