import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameSummaryYellow extends StatefulWidget {
  @override
  _GameSummaryYellowState createState() => _GameSummaryYellowState();
}

class _GameSummaryYellowState extends State<GameSummaryYellow> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/summary yellow.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(icon: Icon(Icons.close, color: Colors.white,), onPressed: (){
                      Navigator.pop(context);
                    }),
                  ],
                ),
              ),

            ],
          )
      ),


    );
  }
}

