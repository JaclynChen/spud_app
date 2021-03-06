import 'package:flutter/material.dart';
import 'package:spudapp/Pages/displayLetters.dart';
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

  _ViewNumberState({this.numPlayers, this.numGhosts,});


  var listPlayers = new List();
  var listNumbers = new List();
  TextEditingController textFieldControllerName = TextEditingController();
  String number ="";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE8804C),
        title: Text('View Number'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            //Text('Numbers generated between 1-' + (widget.numGhosts + widget.numPlayers).toString()),
            Container(
              padding: EdgeInsets.fromLTRB(0, 25, 0, 15),
              width: 300,
              child: TextField(
                controller: textFieldControllerName,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                    ),
                    hintText: 'Enter Player Name'
                ),
              ),
            ),
            FlatButton(
              onPressed: (){
                _createPlayerObject(textFieldControllerName.text);
                _displayNumber();
              },
              color: const Color(0xFF30C3CD),
              child: Text('Reveal Number',
                style: TextStyle(
                  color: const Color(0xFFFFFFFF),
                ),
              ),
            ),

            Container(
              padding:EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Text('Your Number:',
                style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: const Color(0xFFF29D52), )),
            ),

            Container(
              padding:EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Text('$number',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: const Color(0xFFF29D52), )),
            ),

            FlatButton(
              onPressed: (){
                _lockIn();

              },
              color: const Color(0xFF30C3CD),
              child: Text('Lock In',
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

  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((_) => _createNumberList());
  }


  void _createPlayerObject(String name){

    int countPlayerIndex = this.countPlayerIndex;
    int randomNumber = listNumbers[countPlayerIndex];


    listPlayers.add(new Player(playerName: name, playerNumber: randomNumber, letters: ""));

    for(int j=0; j<listPlayers.length; j++ ) {
      print(listPlayers[j].playerName);
      print(listPlayers[j].playerNumber);
      print(listPlayers[j].letters);
    }


  }

  void _createNumberList(){

      for(int i=0; i<numGhosts + numPlayers; i++) {
        listNumbers.add(i+1);
      }

      listNumbers.shuffle();

      print(listNumbers);

  }

  void _displayNumber(){

    //print(number);
    setState(() {
      number = (listPlayers[countPlayerIndex].playerNumber).toString();

    });


  }


  void _lockIn(){

    setState(() {

      textFieldControllerName.clear();
      number = "";
      countPlayerIndex++;

      if(countPlayerIndex == numPlayers){

        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DisplayLetters(listPlayers: listPlayers,),
            )
        );

      }


    });



  }


}


