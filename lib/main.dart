import 'package:flutter/material.dart';
import 'package:qr_reader/pages/home_page.dart';
import 'package:qr_reader/pages/map_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Color primaryColor = Colors.teal;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR Reader',
      initialRoute: 'home',
      routes: {'home': (_) => HomePage(), 'map': (_) => MapPage()},
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: primaryColor,
          ),
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: primaryColor)),
    );
  }
}
