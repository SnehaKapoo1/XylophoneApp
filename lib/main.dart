import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('assets_note$soundNumber.wav');
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            playSound(soundNumber);
          },
          child: const Text('Click Me'),
        ),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(color: Colors.red, soundNumber: 1),
            buildKey(color: Colors.yellow, soundNumber: 2),
            buildKey(color: Colors.teal, soundNumber: 3),
            buildKey(color: Colors.orange, soundNumber: 4),
            buildKey(color: Colors.blue, soundNumber: 5),
            buildKey(color: Colors.purple, soundNumber: 6),
            buildKey(color: Colors.green, soundNumber: 7)
          ],
        )),
      ),
    );
  }
}
