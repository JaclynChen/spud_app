import 'package:flutter/material.dart';

class ViewNumber extends StatefulWidget {

  final int numPlayers;

  ViewNumber({Key key, @required this.numPlayers}) : super(key: key);


  @override
  _ViewNumberState createState() => _ViewNumberState();
}

class _ViewNumberState extends State<ViewNumber> {


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
          Text(widget.numPlayers.toString()),
        ],
      ),
    );
  }
}


