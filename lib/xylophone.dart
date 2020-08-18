import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: XylophonePage(),
      ),
    );
  }
}

class XylophonePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildKey(1, Colors.red),
          buildKey(2, Colors.orange),
          buildKey(3, Colors.yellow),
          buildKey(4, Colors.green),
          buildKey(5, Colors.teal),
          buildKey(6, Colors.blue),
          buildKey(7, Colors.purple),
        ],
      ),
    );
  }

  void play(num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Widget buildKey(int num, Color color) {
    return Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            play(num);
          },
        ));
  }
}

