import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:renetam/dashboard.dart';
import 'package:renetam/game_summary_green.dart';
import 'package:renetam/game_summary_red.dart';
import 'package:renetam/game_summary_yellow.dart';

class InterestGame extends StatefulWidget {
  @override
  _InterestGameState createState() => _InterestGameState();
}

class _InterestGameState extends State<InterestGame> {


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
              color: Colors.white,
            ),

            Container(
              height: 420,
              width: width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/interest_game_bg.png"),
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
                    margin: EdgeInsets.only(top: 25, ),
                    child: Column(
                      children: [

                        Padding(padding: EdgeInsets.only(left: 8),
                          child: Text('I',  style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 45, color: Colors.white
                          ),),
                        ),

                        Center(
                          child: RichText(
                              text: TextSpan(
                                  text: 'Like\n', style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 50, color: Colors.white
                              ),
                                  children: [
                                    TextSpan(
                                        text: 'to...\n', style: TextStyle(
                                        color: Colors.white
                                    )
                                    ),
                                  ]
                              )),
                        ),
                      ],
                    )
                  ),

                ],
              ),
            ),

            Positioned(
              top: MediaQuery.of(context).size.height/2.2,
              child:Container(
                height: height,
                width: width,
                color: Colors.grey[850],
                child: Column(
                  children: [

                    Container(
                      margin: EdgeInsets.only(top: 60),
                      child: Column(
                        children: [

                          Padding(padding: EdgeInsets.only(left: 17),
                          child: Text('...do',  style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 45, color: Colors.blueAccent
                          ),),
                          ),

                          Center(
                            child: RichText(
                                text: TextSpan(
                                    text: 'Puzzles', style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 45, color: Colors.blueAccent
                                ),
                                )),
                          ),
                        ],
                      )
                    ),


                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:25.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 70),
                        height: 60,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (builder)=>GameSummaryGreen()));
                            }, child: Text('Previous', style: TextStyle(
                                color: Colors.grey, fontSize: 25, fontWeight: FontWeight.bold
                            ),)),

                            Container(
                              height: 40,
                              width: 3,
                              color: Colors.grey,
                            ),
                            TextButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (builder)=>GameSummaryRed()));
                            }, child: Text('A', style: TextStyle(
                                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold
                            ),)),

                            Container(
                              height: 40,
                              width: 3,
                              color: Colors.grey,
                            ),
                            TextButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (builder)=>GameSummaryYellow()));
                            }, child: Text('B', style: TextStyle(
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
