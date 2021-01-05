import 'package:flutter/material.dart';
/*
class Question extends StatelessWidget {
  final String questionText;

  final Shader linearGradient = LinearGradient(
    colors: [Color(0xffDA44bb), Color(0xff8921aa)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // EdgeInsets is a special constructor that allow
      // to create variance object

      margin: EdgeInsets.all(10.0),
      child: Text(
        questionText,
        // here TextStyle is a painting library of material dart
        style: TextStyle(
            height: 1.4,
            fontSize: 26,
            foreground: Paint()..shader = linearGradient),
        // here TextAlign is acutally enum and blendmode too
        textAlign: TextAlign.center,
      ),
    );
  }
}
*/

class Question extends StatelessWidget {
  // instance
  final String questionText;
  // constructor
  Question(this.questionText);
  // creating shader for gradient
  final Shader linearGradient =
      LinearGradient(colors: [Colors.orange, Colors.black])
          .createShader(Rect.fromLTWH(90, 90, 90, 90));

  // return Question widget
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(
            fontSize: 30, foreground: Paint()..shader = linearGradient),
        textAlign: TextAlign.center,
      ),
    );
  }
}
