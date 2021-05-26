import 'package:flutter/material.dart';
import 'package:spudapp/Pages/player.dart';

class ViewNumber extends StatefulWidget {

  final int numPlayers;
  final int numGhosts;

  ViewNumber({Key key, @required this.numPlayers, @required this.numGhosts}) : super(key: key);


  @override
  _ViewNumberState createState() => _ViewNumberState(numPlayers: this.numPlayers, numGhosts: this.numGhosts);


}

class _ViewNumberState extends State<ViewNumber> {

  int countPlayerIndex=0;

  int numPlayers;
  int numGhosts;
  int totalNumber;
  _ViewNumberState({this.numPlayers, this.numGhosts,});

  var listPlayers = new List();
  var listNumbers = new List();
  TextEditingController textFieldControllerName = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('View Number'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Text('view number screen'),
          Text('Numbers generated between 1-' + (widget.numGhosts + widget.numPlayers).toString()),
          TextField(
            controller: textFieldControllerName,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                ),
                hintText: 'Enter Player Name'
            ),
          ),
          FlatButton(
            onPressed: (){
              _createPlayerObject(textFieldControllerName.text);
            },
            child: Text('Enter'),
          ),

        ],
      ),
    );
  }

  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((_) => _createNumberList());
  }


  void _createPlayerObject(String name){

    int countPlayerIndex = this.countPlayerIndex;
    int randomNumber = listNumbers[countPlayerIndex];


    listPlayers.add(new Player(playerName: name, playerNumber: randomNumber, letters: ""));
    countPlayerIndex++;

    print(listPlayers[0].playerName);

  }

  void _createNumberList(){

      for(int i=0; i<numGhosts + numPlayers; i++) {
        listNumbers.add(i+1);
      }

      listNumbers.shuffle();

      print(listNumbers);

  }


}


