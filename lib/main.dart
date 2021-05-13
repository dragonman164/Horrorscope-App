import 'package:flutter/material.dart';
import 'screens/homescreen.dart';
import 'screens/zodiacscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raashi Fal',
      routes: {
        HomeScreen.routeName: (context)=>HomeScreen(),
        ZodiacSymbolsPage.routeName: (context)=>ZodiacSymbolsPage(),

      },
    );
  }
}

