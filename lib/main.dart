import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bk.ludo.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Center(
              child: Text('DICEE'),
            ),
            backgroundColor: Colors.black38,
          ),
          body: DicePage(),
        ),
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
  int rightDiceNumber = 1;
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
              child: Image.asset('images/$leftDiceNumber.dice.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightDiceNumber = Random().nextInt(6)+1;
                });
              },
              child: Image.asset('images/$rightDiceNumber.dice.png'),
            ),
          ),
        ],
      ),
    );
  }
}


