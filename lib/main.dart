import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
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

class _DicePageState extends State<DicePage> {
  var leftNumberDice = 4;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftNumberDice = 3;
                });
              },
              child: Image.asset('images/dice$leftNumberDice.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                print('right button got clicked');
              },
              child: Image.asset('images/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}

