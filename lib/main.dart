import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: const Color(0xFF718792),
          appBar: AppBar(
            backgroundColor: const Color(0xFF455A64),
            title: Text('Magic 8-Ball'),
          ),
          body: EightBall(),
        ),
      ),
    );

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      ballNumber = Random().nextInt(5) + 1;
                    });
                  },
                  child: Image.asset('images/ball$ballNumber.png')),
            ),
          ],
        ),
      ),
    );
  }
}
