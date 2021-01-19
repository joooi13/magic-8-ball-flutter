import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Ask me Anything'),
            backgroundColor: Colors.blueGrey,
          ),
          body: BallPage(),
          backgroundColor: Colors.blue,
        ),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
            onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(5) + 1;
                print('I got clicked $ballNumber');
              });
            },
            child: Image.asset('images/ball$ballNumber.png'),
          ))
        ],
      ),
    );
  }
}
