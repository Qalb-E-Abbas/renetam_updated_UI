import 'package:flutter/material.dart';

import 'personality_game_intro.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
             UserAccountsDrawerHeader(
                 accountName: Text('Prosper Nlooto', style: Theme.of(context).textTheme.headline5.copyWith(
                   fontWeight: FontWeight.bold

                 ),),
                 accountEmail: Text('Secondry High School', style: TextStyle(
                   color: Colors.black
                 ),),
             decoration: BoxDecoration(
               color: Colors.white
             ),
             ),

              Divider(color: Colors.black,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal:8.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  color: Colors.blue[50],
                  height: 40,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Icon(Icons.mail, color: Colors.blue,),

                      SizedBox(width: 15,),

                      Text('Notifications', style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ),
              ),

              SizedBox(height: 470,),

              Divider(color: Colors.black,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal:8.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  color: Colors.white,
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Icon(Icons.account_box, color: Colors.black,),

                      SizedBox(width: 15,),

                      Text('Log Out', style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/profile section.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(icon: Icon(Icons.menu, color: Colors.white,), onPressed: (){
                    _key.currentState.openDrawer();
                  }),
                ],
              ),
            ),

            Positioned(
              top: 70,
              left: 12,
              child: Container(
                child: Column(
                  children: [
                    Text('Rene', style: TextStyle(
                      color: Colors.white, fontSize:20,
                    ),),
                    Padding(
                      padding: const EdgeInsets.only(left: 2),
                      child: Text('Ukweli', style: TextStyle(
                          color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold
                      ),),
                    ),
                  ],
                ),

              ),
            ),


            Positioned(
              top: 170,
              left: 15,
              child: Container(

                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){


                        Navigator.push(context, MaterialPageRoute(builder: (builder)=>
                        PersonalityGame()
                        ));


                      },
                      child: Container(
                        height: 200,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/Personality card.png'),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                    ),

                    SizedBox(width: 10,),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (builder)=>
                            PersonalityGame()
                        ));
                      },
                      child: Container(
                        height: 200,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage('assets/interest-card-incomplete.png'),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                    ),

                    SizedBox(width: 10,),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (builder)=>
                            PersonalityGame()
                        ));
                      },
                      child: Container(
                        height: 200,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage('assets/Goals card.png'),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Positioned(
              top:372,
                left: 6,
                child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (builder)=>
                          PersonalityGame()
                      ));
                    },
                    child: Container(
                      height: 140,
                      width: 186,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('assets/New Feed.png'),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  ),

                  SizedBox(width: 10,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (builder)=>
                          PersonalityGame()
                      ));
                    },
                    child: Container(
                      height: 140,
                      width: 186,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('assets/Study Options.png'),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),

          Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (builder)=>
                          PersonalityGame()
                      ));
                    },
                    child: Container(
                      height: 140,
                      width: 186,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('assets/Career Counsellor.png'),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  ),

                  SizedBox(width: 10,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (builder)=>
                          PersonalityGame()
                      ));
                    },
                    child: Container(
                      height: 140,
                      width: 186,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('assets/Career List.png'),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                  ),
                ],
              ),



          ],
        )
            ),


          ],
        )
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor:Colors.white,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.black.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (value) {
          // Respond to item press.
        },
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.menu_outlined),

          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.music_note),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.arrow_back_ios_outlined),
          ),
        ],
      )

    );
  }
}
