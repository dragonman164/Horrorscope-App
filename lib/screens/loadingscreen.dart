import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../screens/homescreen.dart';
import 'dart:async';

class LoadingScreen extends StatefulWidget {

  static String routeName = '/loading';

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 4), ()  {
      Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFF002131),
      body: Column(
        children: [
          Container(
            child: Image(
              image: AssetImage('assets/loading.gif'),
              fit: BoxFit.fitWidth,
            ),
            width: MediaQuery.of(context).size.width,
            height:0.6*MediaQuery.of(context).size.height,
          ),
          Text('Raashi Fal',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            color: Colors.white,
          ),),
          SizedBox(height: 0.03*MediaQuery.of(context).size.height,),
          SpinKitPouringHourglass(color:
          Colors.white,
          size: 80,)
        ],
      )
    );
  }
}
