import 'package:flutter/material.dart';
import 'package:spudapp/Pages/view_number.dart';

class ToggleGame extends StatefulWidget {
  @override
  _ToggleGameState createState() => _ToggleGameState();
}

class _ToggleGameState extends State<ToggleGame> {

  var numPlayers=0;
  var numGhosts=0;
  var counter=0;

  //var numPlayers;
  //var numGhosts;
 // var counter;

 // _ToggleGameState(this.numPlayers, this.numGhosts, this.counter);

 //int get numOfPlayers => numPlayers;

  TextEditingController textFieldControllerPlayers = TextEditingController();
  TextEditingController textFieldControllerGhosts = TextEditingController();


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
              TextField(
                controller: textFieldControllerPlayers,
                onChanged: (value) => setState(() => this.numPlayers = int.parse(value)),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                  ),
                  hintText: 'Enter number of players'
                ),
              ),
          Text('Number of Ghosts: $numGhosts'),
          TextField(
            controller: textFieldControllerGhosts,
            onChanged: (value) => setState(() => this.numGhosts = int.parse(value)),
            decoration: InputDecoration(
                border: OutlineInputBorder(
                ),
                hintText: 'Enter number of ghosts'
            ),
          ),

          FlatButton(
            onPressed: (){
              _sendDataToViewNumber(context);



             /* Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ViewNumber(text: 'numGhosts: $numGhosts'),
                )
              );
              //Navigator.pushNamed(context, '/viewNumber');*/
            },
            child: Text('Start Game'),
          ),
        ],
      ),
    );


  }

  void _sendDataToViewNumber(BuildContext context){
    String players = textFieldControllerPlayers.text;
    String ghosts = textFieldControllerGhosts.text;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ViewNumber(numPlayers: int.parse(players),numGhosts: int.parse(ghosts),),
      )
    );

  }
}


