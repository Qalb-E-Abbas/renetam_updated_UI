import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'personality-game-dashboard.dart';

class PersonalityGame extends StatefulWidget {
  @override
  _PersonalityGameState createState() => _PersonalityGameState();
}

class _PersonalityGameState extends State<PersonalityGame> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/Personality.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(icon: Icon(Icons.close, color: Colors.black,), onPressed: (){
                        Navigator.pop(context);
                      }),
                    ],
                  ),
                ),

                Positioned(
                  top: 45,
                  left: 12,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right:90.0),
                          child: Text('Answer', style: TextStyle(
                            color: Colors.black, fontSize:35,fontStyle: FontStyle.italic
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2),
                          child: Column(
                            children: [
                              RichText(text: TextSpan(
                                text: 'A ',
                                style: TextStyle(
                                  color: Colors.yellow, fontSize: 50, fontWeight: FontWeight.bold
                                ),
                                children: [
                                  TextSpan(text: 'or ', style: TextStyle(
                                    color: Colors.black, fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.normal, fontSize: 30
                                  )),

                                  TextSpan(
                                    text: 'B\n',
                                    style: TextStyle(
                                        color: Colors.yellow, fontSize: 50, fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'as ',
                                      style: TextStyle(
                                          color: Colors.black, fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.normal, fontSize: 30
                                      )
                                  ),
                                  TextSpan(
                                    text: '"the way\nyou are"',
                                    style: TextStyle(
                                        color: Colors.greenAccent, fontSize: 40, fontStyle: FontStyle.italic
                                    ),
                                  ),
                                  TextSpan(
                                      text: ', not\n',
                                      style: TextStyle(
                                          color: Colors.black, fontWeight: FontWeight.normal, fontStyle: FontStyle.italic,
                                      fontSize: 30
                                      ),

                                  ),
                                  TextSpan(
                                    text: '"the way\nyou\'d like\nto bee seen\nby others"',
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 40, fontStyle: FontStyle.italic
                                    ),
                                  ),
                                ]
                              ))
                            ],
                          )
                        ),
                      ],
                    ),

                  ),
                ),

                Positioned(
                    top: MediaQuery.of(context).size.height/1.4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:40.0),
                      child:
                      Text('Remember, there are\nno wrong answers!',
                        style: TextStyle(color: Colors.yellow,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),),
                    )),

                Positioned(
                    top: MediaQuery.of(context).size.height/1.2,
                    child: Padding(
                      padding: const EdgeInsets.only(left:30,right:20.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (ctz)=> PersonalityGameDashboard()));
                        },
                        child: Container(
                            height: 60,
                            width: 360,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text('START', style: TextStyle(
                                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold
                              ),),
                            ),
                          ),
                      ),
                    )

                ),





              ],
            )
        ),


    );
  }
}
