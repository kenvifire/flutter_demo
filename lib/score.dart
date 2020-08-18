import 'package:flutter/material.dart';
import 'package:fultter_demo/question.dart';
import 'package:fultter_demo/quiz_bank.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ScoreBoardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.grey.shade900,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ScoreBoardPage(),
            ),
          )),
    );
  }
}

class ScoreBoardPage extends StatefulWidget {
  @override
  _ScoreBoardPageState createState() => _ScoreBoardPageState();
}

class _ScoreBoardPageState extends State<ScoreBoardPage> {
  List<Icon> scoreKeeper = [];
  QuizzBank quizzBank = QuizzBank();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Center(
              child: Text(
                quizzBank.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.green,
              onPressed: () {
                pressed(true);
              },
              child: Text(
                "True",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              onPressed: () {
                pressed(false);
              },
              color: Colors.red,
              child: Text(
                "False",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: scoreKeeper,
          ),
        ),
      ],
    );
  }

  void pressed(bool userAnswer) {
    if(!quizzBank.hasNext()) {
      Alert(
        context: context,
        type: AlertType.warning,
        title: "RFLUTTER ALERT",
        desc: "Flutter is more awesome with RFlutter Alert.",
        buttons: [
          DialogButton(
            child: Text(
              "FLAT",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            color: Color.fromRGBO(0, 179, 134, 1.0),
          ),
          DialogButton(
            child: Text(
              "GRADIENT",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(116, 116, 191, 1.0),
              Color.fromRGBO(52, 138, 199, 1.0)
            ]),
          )
        ],
      ).show();
      return;
    }

    setState(() {
      if (userAnswer == quizzBank.getQuestionAnswer()) {
        scoreKeeper.add(Icon(
          Icons.check,
          color: Colors.green,
        ));
      } else {
        scoreKeeper.add(Icon(
          Icons.close,
          color: Colors.red,
        ));
      }

      quizzBank.nextQuestion();
    });
  }
}
