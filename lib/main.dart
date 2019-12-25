import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(DiceMain());

class DiceMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Dicee"),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ));
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int firstDiceImg = 3;
  int firstDiceImg1 = 6;

  void changeDiceNumber() {
    setState(() {
      firstDiceImg1 = Random().nextInt(6) + 1;
      firstDiceImg = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                print("First button was pressed.");
                changeDiceNumber();
              },
              child: Image.asset(
                "images/dice$firstDiceImg.png",
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () {
                  print("second button was pressed");
                  changeDiceNumber();
                },
                child: Image.asset(
                  "images/dice$firstDiceImg1.png",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
