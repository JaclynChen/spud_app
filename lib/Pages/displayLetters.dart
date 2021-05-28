import 'package:flutter/material.dart';




class DisplayLetters extends StatefulWidget {

  final listPlayers;

  DisplayLetters({Key key, @required this.listPlayers,}) : super(key: key);



  @override
  _DisplayLettersState createState() => _DisplayLettersState();
}

class _DisplayLettersState extends State<DisplayLetters> {

  // var listPlayers;

  //_DisplayLettersState({this.listPlayers,});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Display Letters'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: widget.listPlayers.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(widget.listPlayers[index].playerName),
              ),

            );
          }),
    );
  }


}
