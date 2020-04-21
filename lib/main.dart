
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red.shade400,
        appBar: AppBar(
          title: Text(
            'Diceee',
            style: TextStyle(
              color: Colors.red,
              fontSize: 30.0,
              fontFamily: 'Pacifico'
            ),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.white,
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

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            onPressed: () {
              setState(() {
                leftDiceNumber = Random().nextInt(6)+1;
              });
            },
            child: Image.asset('images/dice$leftDiceNumber.png', height: 200,
            width: 200),
          ),
          ),
        ],
      ),
    );
  }
}
