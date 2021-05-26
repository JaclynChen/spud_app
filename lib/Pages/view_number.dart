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

  int countPlayerIndex;

  int numPlayers;
  int numGhosts;
  int totalNumber;
  _ViewNumberState({this.numPlayers, this.numGhosts,});

  //var listPlayers = new List();
  var listNumbers = new List();


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
        ],
      ),
    );
  }

  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((_) => _createNumberList());
  }

/*
  void _createPlayerObject(String name){

    int countPlayerIndex = this.countPlayerIndex;
    int randomNumber = listNumbers[countPlayerIndex];


    listPlayers.add(new Player(playerName: name, playerNumber: randomNumber, letters: ""));



  }*/

  void _createNumberList(){

      for(int i=0; i<numGhosts + numPlayers; i++) {
        listNumbers.add(i+1);
      }

      listNumbers.shuffle();

      print(listNumbers);

  }


}


