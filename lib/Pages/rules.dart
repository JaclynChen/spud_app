import 'package:flutter/material.dart';

class Rules extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: const Color(0xFFE8804C),
        title: Text('Rules'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Text(
                  '''- This game must be played with at least 3 players. Enter the number of players and the number of ghosts that you want to play with on the game setup page. The more ghosts that you play with, the harder the game will be
- Enter the names of each player on the next page. Each player will be assigned a number. You must remember your number and keep it a secret from other players.
-Once everyone has a number, one number will be randomly generated to go first. The player who corresponds with that number becomes "it".
-When you are "it", you must choose a number between 1 and the combined total number of players and ghosts.
-If the called number corresponds with a player, that player becomes the “target”. After a “target” is selected, that player will be given a letter of the word SPUD, starting with the letter S.
- However, if a “ghost number” was called, the player who called the number will get a letter from the word SPUD. 
- Everyone else whose number was not called was not the “target” and is considered safe for that round.
- Rounds will continue with the “it” being randomly chosen based on their number. 
- The next time that player is the “target”, they will receive a P, and so on until they have all the letters in the word SPUD. 
- As players either become the “target” or call out a “ghost number,” they will continue to receive letters from the word SPUD. When your letters spell the word SPUD, you are “out” and will only be able to watch the game.
- The game is done once there is only one individual left and everyone else is “out”.




                  
                  ''',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
