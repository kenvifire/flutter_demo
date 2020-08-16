import 'package:flutter/material.dart';
import 'dart:math';

class BallApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text("Ask Me Anything"),
          backgroundColor: Colors.blue,
        ),
        body: Ball(),
      ),
    );
  }
}


class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  var ans = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('image/ball$ans.png'),
              onPressed: () {
                setState(() {
                  ans = Random().nextInt(5) + 1;
                });
              },
            ),
          ),
        ],
      ),

    );
  }
}
