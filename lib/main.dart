import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded buildKey(Color c, int soundNumber){
    return Expanded(
        child: FlatButton(
          color: c,
          onPressed: (){
            playSound(soundNumber);
          },
        ),
      );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(Colors.red,1),
                buildKey(Colors.green,2),
                buildKey(Colors.yellow,3),
                buildKey(Colors.deepOrange,4),
                buildKey(Colors.blue,5),
                buildKey(Colors.pinkAccent,6),
                buildKey(Colors.purple,7),
              ],
            )
          ),
        ),
      ),
    );
  }
}
