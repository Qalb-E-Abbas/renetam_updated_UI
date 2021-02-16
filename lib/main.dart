import 'package:flutter/material.dart';
import 'package:renetam/game_summary_red.dart';
import 'package:renetam/game_summary_yellow.dart';
import 'package:renetam/game_summery_blue.dart';
import 'package:renetam/interest_game.dart';
import 'package:renetam/interest_game_intro.dart';
import 'package:renetam/personality-game-dashboard.dart';
import 'package:renetam/personality_game_intro.dart';

import 'dashboard.dart';
import 'dashboard.dart';
import 'game_summery_blue.dart';
import 'interest_game.dart';
import 'interest_game_intro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Dashboard(),
    );
  }
}

