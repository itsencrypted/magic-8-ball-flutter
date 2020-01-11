import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home: MagicBall(),
  ),
);

class MagicBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Ask me anything'),
      ),
      body: AnswerBall(),
    );
  }
}

class AnswerBall extends StatefulWidget {
  @override
  _AnswerBallState createState() => _AnswerBallState();
}

class _AnswerBallState extends State<AnswerBall> {

  int ballnumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          setState(() {
            ballnumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$ballnumber.png'),
      ),
    );
  }
}
