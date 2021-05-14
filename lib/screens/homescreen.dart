import 'package:flutter/material.dart';
import '../widgets/textanimation.dart';
import 'zodiacscreen.dart';
import '../models/daysofweek.dart';


class HomeScreen extends StatefulWidget {

  static String routeName = '/';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      body: Stack(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: 0.599*MediaQuery.of(context).size.height,
              child: Image(image: AssetImage('assets/spaceback.jpg'),fit: BoxFit.cover,)),
          Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SlideFadeTransition(
                    child: Text('Date : ${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),),
                  ),
                  SlideFadeTransition(
                    child: Text('Day : ${days.values[DateTime.now().weekday-1].toString().split('.')[1]}',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),),
                  ),
                ],
              ),

            decoration: BoxDecoration(
              color: Colors.redAccent.withOpacity(0.8),
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.only(left: 0.13*MediaQuery.of(context).size.width,top: 0.22*MediaQuery.of(context).size.height),
            width: 0.75*MediaQuery.of(context).size.width,
            height: 0.12*MediaQuery.of(context).size.height,
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              Container(
                width: MediaQuery.of(context).size.width,
                height: 0.45*MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(40) ,topRight: Radius.circular(40)),
                  color: Colors.purple,
                ),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                       SlideFadeTransition(
                         child: Text('Special about this Day:',style: TextStyle(
                           fontSize: 25,
                           fontWeight: FontWeight.bold,
                           color: Colors.white,
                         ),),
                       ),
                        SizedBox(height: 0.02*MediaQuery.of(context).size.height,),
                        
                        SlideFadeTransition(
                          child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ',style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),),
                        ),
                        SizedBox(height: 0.04*MediaQuery.of(context).size.height,),
                        Center(
                          child: Container(
                            child: Material(
                              animationDuration: Duration(seconds: 2),
                              child: InkWell(
                                onTap: (){
                                  Navigator.of(context).pushNamed(ZodiacSymbolsPage.routeName);
                                },
                                child: Container(
                                  width: 0.55*MediaQuery.of(context).size.width,
                                  height:0.07*MediaQuery.of(context).size.height,
                                  child: Center(child: Text('Check your Fortune',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color:Colors.white,
                                  ),)),
                                ),
                              ),
                              color: Colors.redAccent,
                            ),
                          ),
                        )
                      ],
                ),
                  ),
              ),
            ],
          ),

        ],
      )
    );
  }
}
