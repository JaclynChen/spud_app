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
          minimum: const EdgeInsets.all(40.0),
          child: Center(
            child: Column(
              children: <Widget> [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 125, 0, 30),
                  child: Text('Spud',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: const Color(0xFFF29D52),

                  ),),
                ),
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
            ),
          )
      ),
    );
  }
}
