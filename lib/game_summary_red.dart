import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameSummaryRed extends StatefulWidget {
  @override
  _GameSummaryRedState createState() => _GameSummaryRedState();
}

class _GameSummaryRedState extends State<GameSummaryRed> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/summary red.jpg"),
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

