import 'package:flutter/material.dart';
import 'screens/loadingscreen.dart';
import 'screens/homescreen.dart';
import 'screens/zodiacscreen.dart';
import 'screens/zodiacfortunescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raashi Fal',
    theme: ThemeData(
      primaryColor: Colors.purple,
    ),
      initialRoute: LoadingScreen.routeName,
      routes: {
        LoadingScreen.routeName:(context)=>LoadingScreen(),
        HomeScreen.routeName: (context)=>HomeScreen(),
        ZodiacSymbolsPage.routeName: (context)=>ZodiacSymbolsPage(),
        ZodiacFortuneScreen.routeName:(context)=>ZodiacFortuneScreen(),

      },
    );
  }
}

