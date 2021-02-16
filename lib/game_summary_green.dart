import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:renetam/game_summery_blue.dart';

class GameSummaryGreen extends StatefulWidget {
  @override
  _GameSummaryGreenState createState() => _GameSummaryGreenState();
}

class _GameSummaryGreenState extends State<GameSummaryGreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/Summary green.jpg"),
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

