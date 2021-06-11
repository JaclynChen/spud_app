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
                    fontSize: 70.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: const Color(0xFFE8804C),

                  ),),
                ),
                Container(
                  padding:EdgeInsets.fromLTRB(0, 10, 0, 10),
                  width: 130,
                  height: 65,
                  child: FlatButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/toggle');
                    },
                    color: const Color(0xFF30C3CD),
                    child: Text('Create Game',
                    style: TextStyle(
                      color: const Color(0xFFFFFFFF),
                    ),
                    ),
                  ),
                ),
                Container(
                  padding:EdgeInsets.fromLTRB(0, 10, 0, 10),
                  width: 130,
                  height: 65,
                  child: FlatButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/rules');
                    },
                    color: const Color(0xFF30C3CD),
                    child: Text('Rules',
                      style: TextStyle(
                        color: const Color(0xFFFFFFFF),
                      ),),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
