import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: DiceChange(),
      ),
    ),
  );
}

class DiceChange extends StatefulWidget {
  @override
  _DiceChangeState createState() => _DiceChangeState();
}

class _DiceChangeState extends State<DiceChange> {
  int left = 1;
  int right = 3;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              splashColor: Colors.red[100],
              onPressed: () {
                setState(() {
                  left = Random().nextInt(6) + 1;
                });
              },
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
              child: Image(
                colorBlendMode: BlendMode.darken,
                image: AssetImage('images/dice$left.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              splashColor: Colors.red[100],
              onPressed: () {
                setState(() {
                  right = Random().nextInt(6) + 1;
                });
              },
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
              child: Image(
                colorBlendMode: BlendMode.darken,
                image: AssetImage('images/dice$right.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
