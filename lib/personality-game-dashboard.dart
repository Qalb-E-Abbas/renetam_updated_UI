import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:renetam/personality_game_intro.dart';

class PersonalityGameDashboard extends StatefulWidget {
  @override
  _PersonalityGameDashboardState createState() => _PersonalityGameDashboardState();
}

class _PersonalityGameDashboardState extends State<PersonalityGameDashboard> {


  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
          child:  Stack(
            children: [
              Container(
                height: height,
                width: width,
                color: Colors.black,
              ),

              Container(
                height: 320,
                width: width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/personality-game-dashboard.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 360),
                      child: IconButton(icon: Icon(Icons.close, color: Colors.white, size: 30,), onPressed: (){
                        Navigator.pop(context);
                      }),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, ),
                      child: Center(
                        child: RichText(
                            text: TextSpan(
                                text: '1. ', style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 50, color: Colors.white
                            ),
                                children: [
                                  TextSpan(
                                      text: 'At a party \ndo you:', style: TextStyle(
                                      color: Colors.white
                                  )
                                  )
                                ]
                            )),
                      ),
                    ),

                  ],
                ),
              ),

              Positioned(
                  top: MediaQuery.of(context).size.height/2.7,
                  child:Container(
                height: height,
                width: width,
                color: Colors.grey[850],
                    child: Column(
                      children: [

                     Container(
                            margin: EdgeInsets.only(top: 30),
                            child: Center(
                              child: RichText(
                                  text: TextSpan(
                                text: 'A. ', style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white
                              ),
                                children: [
                                  TextSpan(
                                    text: 'Interact with \nmany, including', style: TextStyle(
                                    color: Colors.orange
                                  )
                                  )
                                ]
                              )),
                            ),
                          ),

                       Center(
                         child: Text('strangers', style: TextStyle(
                             fontWeight: FontWeight.bold, fontSize: 40, color: Colors.orange
                         ),),
                       ),


                       Container(
                         margin: EdgeInsets.only( top: 10, right: 10),
                         child: Center(
                           child: RichText(
                                  text: TextSpan(
                                  text: 'B. ', style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white
                              ),
                                  children: [
                                    TextSpan(
                                        text: 'Interact with\na few, known', style: TextStyle(
                                        color: Colors.orange
                                    )
                                    ),

                                  ]
                              )),
                         ),
                       ),

                        Padding(
                          padding: EdgeInsets.only(right: 50),
                          child: Text('to you', style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 40, color: Colors.orange
                          ),),
                        ),



                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:25.0),
                          child: Container(
                            margin: EdgeInsets.only(top: 30),
                            height: 60,
                            width: width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(onPressed: (){}, child: Text('Previous', style: TextStyle(
                                    color: Colors.grey, fontSize: 25, fontWeight: FontWeight.bold
                                ),)),

                                Container(
                                  height: 40,
                                  width: 3,
                                  color: Colors.grey,
                                ),
                                TextButton(onPressed: (){}, child: Text('A', style: TextStyle(
                                  color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold
                                ),)),

                                Container(
                                  height: 40,
                                  width: 3,
                                  color: Colors.grey,
                                ),
                                TextButton(onPressed: (){}, child: Text('B', style: TextStyle(
                                    color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold
                                ),)),


                              ],
                            ),
                          ),
                        )


                      ],
                    ),
                    ),
                  )

            ],
          ),
      ),


    );
  }
}
