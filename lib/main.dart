import 'package:flutter/material.dart';
import 'package:spudapp/Pages/displayLetters.dart';
import 'package:spudapp/Pages/loading.dart';
import 'package:spudapp/Pages/home.dart';
import 'package:spudapp/Pages/toggle_game.dart';
import 'package:spudapp/Pages/view_number.dart';
import 'package:spudapp/Pages/rules.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/home',  //overrides default route
   routes: {
     '/': (context) => Loading(),
     '/home': (context) => Home(),
     '/toggle': (context) => ToggleGame(),
     '/viewNumber': (context) => ViewNumber(),
     '/rules': (context) => Rules(),
     '/displayLetters': (context) => DisplayLetters(),

   },
));






