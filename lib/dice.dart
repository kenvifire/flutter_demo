import 'package:flutter/material.dart';
import 'dart:math';

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dice"),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: FlatButton(
                  onPressed: () {
                     change();
                  },
                  child: Image.asset('image/dice$leftDiceNumber.png'))),
          Expanded(
              flex: 1,
              child:  FlatButton(
                  onPressed: () {
                    change();
                  },
                  child: Image.asset ('image/dice$rightDiceNumber.png'))),
//        Image(image: AssetImage('image/dices')),
        ],
      ),
    );
  }

  void change() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber= Random().nextInt(6) + 1;
    });
  }
}


