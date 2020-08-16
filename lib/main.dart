import 'package:flutter/material.dart';
import 'package:fultter_demo/ball.dart';
import 'package:fultter_demo/dice.dart';

void main() {
  runApp(BallApp());
}


class CardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage('image/kenvi.png'),
              ),
              Text(
                "Kenvi Zhu",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',

                ),

              ),
              Text(
                  "COPY AND PAST ENGINEER",
                  style: TextStyle(
                    color: Colors.teal[50],
                    fontFamily: "Source Sans Pro",
                    fontSize: 20.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                  )
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.teal.shade900,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "+01 778 680 0235",
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: "Source Sans Pro",
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),

              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                padding: EdgeInsets.all(10.0),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.teal.shade900,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'kenvifly@gmail.com',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: "Source Sans Pro",
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),

              )
            ],

          ),
        )
      ),
    );
  }
}

class CardApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage('image/kenvi.png'),
                ),
                Text(
                  "Kenvi Zhu",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico',

                  ),

                ),
                Text(
                    "COPY AND PAST ENGINEER",
                    style: TextStyle(
                      color: Colors.teal[50],
                      fontFamily: "Source Sans Pro",
                      fontSize: 20.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                    )
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.phone,
                          color: Colors.teal.shade900,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "+01 778 680 0235",
                          style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: "Source Sans Pro",
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),

                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.email,
                          color: Colors.teal.shade900,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'kenvifly@gmail.com',
                          style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: "Source Sans Pro",
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),

                )
              ],

            ),
          )
      ),
    );
  }
}

class CardApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage('image/kenvi.png'),
                ),
                Text(
                  "Kenvi Zhu",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico',

                  ),

                ),
                Text(
                    "COPY AND PASTE ENGINEER",
                    style: TextStyle(
                      color: Colors.teal[50],
                      fontFamily: "Source Sans Pro",
                      fontSize: 20.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                    )
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),

                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal.shade900,
                      ),
                      title: Text(
                        "+01 778 680 0235",
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: "Source Sans Pro",
                          fontSize: 20.0,
                        ),
                      ),
                  ),

                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal.shade900,
                    ),
                    title:  Text(
                        'kenvifly@gmail.com',
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: "Source Sans Pro",
                          fontSize: 20.0,
                        )
                    ),

                    ),
                  ),
              ],

            ),
          )
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.red,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.green,
                  )
                ],
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.blue,
              ),
            ],
          )
        )

      ),
    );
  }
}


