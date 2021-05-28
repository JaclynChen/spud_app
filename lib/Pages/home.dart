import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: <Widget> [
              FlatButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/toggle');
                },
                child: Text('Create Game'),
              ),
              FlatButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/rules');
                },
                child: Text('Rules'),
              ),
            ],
          )
      ),
    );
  }
}
