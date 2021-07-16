import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

int leftDiceNumber = 1;
int rightDiceNumber = 1;

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  DiceNumber();
                });
              },
              child: Image.asset(
                'images/dice$leftDiceNumber.png',
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  DiceNumber();
                });
              },
              child: Image.asset(
                'images/dice$rightDiceNumber.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void DiceNumber() {
  rightDiceNumber = Random().nextInt(6) + 1;
  leftDiceNumber = Random().nextInt(6) + 1;
}
