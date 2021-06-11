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
        backgroundColor: const Color(0xFFE8804C),
        title: Text('Display Players'),
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
