import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound (int i) {
    final player = AudioCache();
    player.play('note$i.wav');
  }

  Expanded buildKey(Color color, int i)
  {
    return Expanded(
      child: TextButton(
        onPressed: (){
          playSound(i);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),

        ),

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(Colors.red, 1),
                buildKey(Colors.orange, 2),
                buildKey(Colors.yellow, 3),
                buildKey(Colors.green, 4),
                buildKey(Colors.lightBlueAccent, 5),
                buildKey(Colors.indigo, 6),
                buildKey(Colors.purple, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
