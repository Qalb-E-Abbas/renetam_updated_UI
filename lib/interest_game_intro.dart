import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:renetam/personality-game-dashboard.dart';

class InterestGameIntro extends StatefulWidget {
  @override
  _InterestGameIntroState createState() => _InterestGameIntroState();
}

class _InterestGameIntroState extends State<InterestGameIntro> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/InterestGameIntro_Bg.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(icon: Icon(Icons.close, color: Colors.black, size: 30,), onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (builder)=>PersonalityGameDashboard()));
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
                       padding: const EdgeInsets.only(right:10.0),
                       child: Text('If you', style: TextStyle(
                              color: Colors.black, fontSize:40,fontStyle: FontStyle.italic
                          ),),
                     ),

                      Padding(
                          padding: const EdgeInsets.only(left: 2),
                          child: Column(
                            children: [
                              RichText(text: TextSpan(
                                  text: 'agree,',
                                  style: TextStyle(
                                      color: Colors.greenAccent, fontSize: 40, fontWeight: FontWeight.bold
                                  ),
                                  children: [
                                    TextSpan(text: '\nselect', style: TextStyle(
                                        color: Colors.black, fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.normal, fontSize: 35
                                    )),

                                    TextSpan(
                                      text: '\nYes\n',
                                      style: TextStyle(
                                          color: Colors.deepPurple, fontSize: 55, fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    
                                    TextSpan(
                                        text: 'If ',
                                        style: TextStyle(
                                            color: Colors.black, fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.normal, fontSize: 35
                                        )
                                    ),
                                    TextSpan(
                                      text: 'not',
                                      style: TextStyle(
                                          color: Colors.redAccent, fontSize: 45, fontStyle: FontStyle.italic
                                      ),
                                    ),
                                    TextSpan(
                                      text: ',\nselect',
                                      style: TextStyle(
                                          color: Colors.black, fontWeight: FontWeight.normal, fontStyle: FontStyle.italic,
                                          fontSize: 35
                                      ),

                                    ),
                                    TextSpan(
                                      text: '\nNO',
                                      style: TextStyle(
                                          color: Colors.deepPurple, fontSize: 45, fontWeight: FontWeight.bold
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
                    padding: const EdgeInsets.only(left:45.0),
                    child: Text('Remember, there are\nno wrong answers!',
                          style: TextStyle(color: Colors.blueAccent,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),),
                  ),

                  ),

              Positioned(
                  top: MediaQuery.of(context).size.height/1.2,
                  child: Padding(
                    padding: const EdgeInsets.only(left:30,right:20.0),
                    child: Container(
                      height: 70,
                      width: 360,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text('START', style: TextStyle(
                            color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold
                        ),),
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
