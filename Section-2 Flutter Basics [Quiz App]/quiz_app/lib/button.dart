import 'package:flutter/material.dart';

/*
class Button extends StatelessWidget {
  final Function indexHandler;
  Button(this.indexHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // color is a static property
      child: ElevatedButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.blue[300],
              onSurface: Colors.purple[900],
              shadowColor: Colors.black),
          child: Text('Answer 1'),
          onPressed: indexHandler),
    );
  }
}
*/
class Answer extends StatelessWidget {
  final Function selectHandler;
  String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: TextButton.styleFrom(
            primary: Colors.red,
            onSurface: Colors.orange,
            backgroundColor: Colors.black),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
