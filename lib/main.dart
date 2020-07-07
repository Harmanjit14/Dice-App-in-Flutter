import 'package:flutter/material.dart';

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
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
              child: Image(
                colorBlendMode: BlendMode.darken,
                image: AssetImage('images/dice1.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
              child: Image(
                colorBlendMode: BlendMode.darken,
                image: AssetImage('images/dice2.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
