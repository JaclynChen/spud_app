import 'package:flutter/material.dart';

class ToggleGame extends StatefulWidget {
  @override
  _ToggleGameState createState() => _ToggleGameState();
}

class _ToggleGameState extends State<ToggleGame> {

  var numPlayers =0;
  var numGhosts = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Adjust the Game Settings'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: <Widget> [
          Text('toggle game screen'),
          Text('Number of Players: $numPlayers'),
          Text('Number of Ghosts: $numGhosts'),
          FlatButton(
            onPressed: (){
              Navigator.pushNamed(context, '/viewNumber');
            },
            child: Text('Start Game'),
          ),
        ],
      ),
    );
  }
}


