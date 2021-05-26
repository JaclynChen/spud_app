import 'package:flutter/material.dart';

class DisplayLetters extends StatefulWidget {
  @override
  _DisplayLettersState createState() => _DisplayLettersState();
}

class _DisplayLettersState extends State<DisplayLetters> {
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

    );
  }
}
