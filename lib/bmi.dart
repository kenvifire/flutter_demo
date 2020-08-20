import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}

enum Gender {
  FEMALE,
  MALE
}

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(children: <Widget>[
        Expanded(
          flex: 1,
          child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.MALE;
                    });
                  },
                  child: ReusableCard(
                    color: selectedGender == Gender.MALE ? activeCardColor : inactiveCardColor,
                    cardChild: IconContent(text: 'MALE', icon: FontAwesomeIcons.mars,)
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.FEMALE;
                    });
                  },
                  child: ReusableCard(color: selectedGender == Gender.FEMALE ? activeCardColor : inactiveCardColor,
                  cardChild: IconContent(text: 'FEMALE', icon: FontAwesomeIcons.venus),),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ReusableCard(color: activeCardColor,),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: ReusableCard(color: activeCardColor,),
              ),
              Expanded(
                flex: 1,
                child: ReusableCard(color: activeCardColor,),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}



