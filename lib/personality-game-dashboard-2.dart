import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalityGameDashboard2 extends StatefulWidget {
  @override
  _PersonalityGameDashboard2State createState() => _PersonalityGameDashboard2State();
}

class _PersonalityGameDashboard2State extends State<PersonalityGameDashboard2> {

  GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      key: _key,
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
                      _key.currentState.openDrawer();
                    }),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, ),
                    child: Center(
                      child: RichText(
                          text: TextSpan(
                              text: '17. ', style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 50, color: Colors.white
                          ),
                              children: [
                                TextSpan(
                                    text: 'Writers', style: TextStyle(
                                    color: Colors.white
                                )
                                )
                              ]
                          )),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Center(
                      child: Text('should', style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 50, color: Colors.white
                      ),),
                    ),
                  ),

                ],
              ),
            ),

            Positioned(
              top: 320,
              child:Container(
                height: height,
                width: width,
                color: Colors.grey[850],
                child: Column(
                  children: [

                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Center(
                        child: RichText(
                            text: TextSpan(
                                text: 'A. ', style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white
                            ),
                                children: [
                                  TextSpan(
                                      text: '"Say what they"', style: TextStyle(
                                      color: Colors.orange
                                  )
                                  )
                                ]
                            )),
                      ),
                    ),

                    Center(
                      child: Text('mean & mean\nwhat they say"', style: TextStyle(
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
                                      text: 'Express things', style: TextStyle(
                                      color: Colors.orange
                                  )
                                  ),

                                ]
                            )),
                      ),
                    ),

                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Center(
                          child: Text('more by use', style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 40, color: Colors.orange
                          ),),
                        ),
                      ),

                        Center(
                        child: Text('of analogy', style: TextStyle(
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
