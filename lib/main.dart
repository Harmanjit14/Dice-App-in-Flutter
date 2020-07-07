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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Image(
                colorBlendMode: BlendMode.darken,
                width: 150.0,
                image: AssetImage('images/dice1.png'),
              ),
            ),
            SizedBox(width: 15.0),
            Expanded(
              child: Image(
                colorBlendMode: BlendMode.darken,
                width: 150.0,
                image: AssetImage('images/dice2.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
