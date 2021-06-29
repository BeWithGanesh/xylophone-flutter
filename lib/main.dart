import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

void playSound(int num) {
  final player = AudioCache();
  player.play('note$num.wav');
}

Expanded buildKey({Color color, int num}){
  return Expanded(
    child: TextButton(
      onPressed: () {
        playSound(num);
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color)),
      child: Text(''),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, num: 1),
              buildKey(color: Colors.orange, num: 2),
              buildKey(color: Colors.yellow, num: 3),
              buildKey(color: Colors.green, num: 4),
              buildKey(color: Colors.teal, num: 5),
              buildKey(color: Colors.blue, num: 6),
              buildKey(color: Colors.purple, num: 7),
            ],
          ),
        ),
      ),
    );
  }
}
