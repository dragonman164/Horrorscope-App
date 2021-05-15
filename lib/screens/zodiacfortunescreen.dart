import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ZodiacFortuneScreen extends StatelessWidget {

  static String routeName = '/zodiacFortune';
  late Map<String,String> data;
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as Map<String,String>;
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      appBar: AppBar(
        title: Text('${data['name']}\'s Fortune',style: TextStyle(
          fontSize: 20,
          fontWeight:FontWeight.bold,
        ),),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(0.01*MediaQuery.of(context).size.height),
                margin:EdgeInsets.all(0.02*MediaQuery.of(context).size.height),
                height: 0.3*MediaQuery.of(context).size.height,
                width: 0.45*MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Image(image: AssetImage('${data['image']}'),)
                  ],
                ),
                decoration: BoxDecoration(
                gradient: LinearGradient(
                colors: [
                  Colors.redAccent,
                  Colors.orangeAccent,
    ],),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white,width: 5)
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Luck Percentage: ',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),textAlign: TextAlign.center,),
                  SizedBox(height: 5,),
                  CircularPercentIndicator(
                    radius: 60.0,
                    lineWidth: 5.0,
                    percent:0.85,
                    center: new Text("85%",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                    progressColor: Colors.green,
                  )
                ],
              ),

            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: DefaultTabController(
              length: 3,
              child: Scaffold(
                backgroundColor: Colors.indigo[600],
                appBar:  TabBar(
              indicatorColor: Colors.black,
                    tabs: [
                      Tab(icon: Text('Yesterday',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
                      Tab(icon: Text('Today',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
                      Tab(icon: Text('Tomorrow',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
                    ],

                ),
                body: TabBarView(

                  children: [
                    Center(
                      child: Text('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),textAlign: TextAlign.center,),
                    ),
                    Center(
                      child: Text('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),textAlign: TextAlign.center,),
                    ),
                    Center(
                      child: Text('It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),textAlign: TextAlign.center,),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Table(
               textDirection: TextDirection.ltr,
               defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
               border:TableBorder.all(width: 3.0,color: Colors.white),
              children: [
                TableRow(
                  decoration: BoxDecoration(
                    color: Colors.indigo[400],
                  ),
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Text("Today's Mind : Fearless",style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),),
                      ),
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Text("LuckyNumber : 84",style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),)),

                    ]
                ),
                TableRow(
                    decoration: BoxDecoration(
                      color: Colors.indigo[400],
                    ),
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Text("Today's Color : NavyBlue",style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Text("Lucky Time of the Day : 8 am",style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),),
                      ),

                    ]
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
