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

  TextEditingController textFieldControllerPlayers = TextEditingController();
  TextEditingController textFieldControllerGhosts = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: const Color(0xFFE8804C),
        title: Text('Adjust the Game Settings'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: <Widget> [
                Container(
                    padding: EdgeInsets.fromLTRB(0, 25, 0, 10),
                    child:
                    Text('Number of Players:',
                      style: TextStyle(
                        color: const Color(0xFFF29D52),
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                     )
                ),
                Container(
                  width: 300,
                  child: TextField(
                    controller: textFieldControllerPlayers,
                    onChanged: (value) => setState(() => this.numPlayers = int.parse(value)),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                      ),
                      hintText: 'Enter number of players'
                    ),
                  ),
                ),

            Container(
              padding: EdgeInsets.fromLTRB(0, 25, 0, 10),
              child: Text('Number of Ghosts:',
                style: TextStyle(
                  color: const Color(0xFFF29D52),
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),),),
            Container(
              width: 300,
              padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: TextField(
                controller: textFieldControllerGhosts,
                onChanged: (value) => setState(() => this.numGhosts = int.parse(value)),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                    ),
                    hintText: 'Enter number of ghosts'
                ),
              ),
            ),

            FlatButton(
              onPressed: (){
                _sendDataToViewNumber(context);

              },
              color: const Color(0xFF30C3CD),
              child: Text('Start Game',
                style: TextStyle(
                  color: const Color(0xFFFFFFFF),
                ),
              ),
            ),
          ],
        ),
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


