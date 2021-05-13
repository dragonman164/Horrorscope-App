import 'package:flutter/material.dart';

class ZodiacSymbolsPage extends StatelessWidget {

  static String routeName = '/zodiacSymbols';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zodiac Symbols',style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),
        backgroundColor: Colors.purple,
      ),
    );
  }
}
