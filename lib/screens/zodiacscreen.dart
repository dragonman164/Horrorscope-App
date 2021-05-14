import 'package:flutter/material.dart';
import '../widgets/zodiac_card.dart';
import '../models/zodiacs.dart';

class ZodiacSymbolsPage extends StatelessWidget {

  List<Widget> makeZodiacs()
  {
    List<ZodiacSymbol> temp = [];
    List<Row> rows = [];
    for(ZodiacDetails elem in zodiacData)
      {
        temp.add(ZodiacSymbol(name: elem.name,image:elem.image));
        if(temp.length == 2)
          {
            rows.add(Row(
              children: new List<ZodiacSymbol>.from(temp),
            ));
            temp.clear();
          }
      }
    return rows;
  }
 

  static String routeName = '/zodiacSymbols';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      appBar: AppBar(
        title: Text('Zodiac Symbols',style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: makeZodiacs(),
        ),
      ),
    );
  }
}
