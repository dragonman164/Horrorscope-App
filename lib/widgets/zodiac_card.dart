import 'package:flutter/material.dart';
import '../screens/zodiacfortunescreen.dart';

class ZodiacSymbol extends StatelessWidget {

  late String name, image;
  ZodiacSymbol({required this.name,required this.image});

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin:  EdgeInsets.all(0.021*MediaQuery.of(context).size.height),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
            colors: [
              const Color(0xFF3366FF),
              const Color(0xFF00CCFF),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
        ),
        child: Material(

        color: Colors.transparent,
          animationDuration: Duration(seconds: 2),
          child: InkWell(
            onTap: () {
            Navigator.of(context).pushNamed(ZodiacFortuneScreen.routeName,arguments: {
              'name':name,
              'image':image,
            });
            },
            child: Container(
              padding: EdgeInsets.all(0.01*MediaQuery.of(context).size.height),
              child: Column(
                children: [
                  Image(image: AssetImage(image),),
                  Text(name,style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,
                  ),)
                ],
              ),

              width: 0.41*MediaQuery.of(context).size.width,
              height: 0.3*MediaQuery.of(context).size.height,
            ),
          ),
        ),
      ),
    );
  }
}
