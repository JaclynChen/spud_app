import 'package:flutter/material.dart';

class Rules extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Rules'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text('rules page'),
    );
  }
}
