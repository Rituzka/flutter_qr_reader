import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/pages/history_map.dart';
import 'package:qr_reader/pages/home_page.dart';
import 'package:qr_reader/pages/map_page.dart';
import 'package:qr_reader/providers/ui_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Color primaryColor = Colors.teal;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => UiProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR Reader',
        initialRoute: 'home',
        routes: {
          'home': (_) => HomePage(),
          'map': (_) => MapPage(),
          'history': (_) => HistoryMaps()
        },
        theme: ThemeData(
            appBarTheme: AppBarTheme(
              color: primaryColor,
            ),
            floatingActionButtonTheme:
                FloatingActionButtonThemeData(backgroundColor: primaryColor)),
      ),
    );
  }
}
