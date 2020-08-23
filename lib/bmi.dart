import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fultter_demo/calculator_brain.dart';
import 'package:fultter_demo/result_page.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';

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

enum Gender { FEMALE, MALE }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  color: selectedGender == Gender.MALE
                      ? activeCardColor
                      : inactiveCardColor,
                  cardChild: IconContent(
                    text: 'MALE',
                    icon: FontAwesomeIcons.mars,
                  ),
                  onPress: setGender(Gender.MALE),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  color: selectedGender == Gender.FEMALE
                      ? activeCardColor
                      : inactiveCardColor,
                  cardChild:
                  IconContent(text: 'FEMALE', icon: FontAwesomeIcons.venus),
                  onPress: setGender(Gender.FEMALE),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ReusableCard(
            color: activeCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "HEIGHT",
                  style: labelTextStyle,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        "$height",
                        style: numberTextStyle,
                      ),
                      Text(
                        "cm",
                        style: labelTextStyle,
                      ),
                    ]),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                    thumbColor: Color(0xFFEB1555),
                    overlayColor: Color(0x29EB1555),
                    activeTickMarkColor: Colors.white,
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220,
                    onChanged: (value) {
                      setState(() {
                        height = value.round();
                      });
                    },
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: ReusableCard(
                  color: activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("WEIGHT", style: labelTextStyle),
                      Text(
                        weight.toString(),
                        style: numberTextStyle,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(icon: FontAwesomeIcons.minus, onPress: changeWeight(-1),),
                            SizedBox(width: 10.0),
                            RoundIconButton(icon: FontAwesomeIcons.plus, onPress: changeWeight(1),),
                          ]),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ReusableCard(
                  color: activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("AGE", style: labelTextStyle),
                      Text(
                        age.toString(),
                        style: numberTextStyle,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(icon: FontAwesomeIcons.minus, onPress: changeAge(-1),),
                            SizedBox(width: 10.0),
                            RoundIconButton(icon: FontAwesomeIcons.plus, onPress: changeAge(1),),
                          ]),
                    ],
                  ),                ),
              ),
            ],
          ),
        ),
        BottomButton(text: 'CALCULATE', onTap: () {

          CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);

          Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage(
            bmiResult: calc.calculateBMI(),
            resultText: calc.getResult(),
            interpretation: calc.getInterpretation(),
          ) ));
        }),
      ]),
    );
  }

  Function setGender(Gender gender) {
    return () {
      setState(() {
        selectedGender = gender;
      });
    };
  }

  Function changeWeight(int value) {
    return () {
      int newWeight = weight + value;
      setState(() {
        if(newWeight > 0 && newWeight < 1000) {
          weight = newWeight;
        }
      });
    };
  }

  Function changeAge(int value) {
    return () {
      int newAge = age + value;
      setState(() {
        if(newAge > 0 && newAge < 200) {
          age = newAge;
        }
      });
    };
  }
}

class BottomButton extends StatelessWidget {
  final String text;
  final Function onTap;

  BottomButton({@required this.text, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text("$text",
          style: kLargeButtonTextStyle,),
        ),
        margin: EdgeInsets.only(top: 10.0),
        padding:  EdgeInsets.only(bottom: 10.0),
        color: kBottomContainerColour,
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onPress});

  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      shape: CircleBorder(),
      elevation: 0.0,
      onPressed: onPress,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
