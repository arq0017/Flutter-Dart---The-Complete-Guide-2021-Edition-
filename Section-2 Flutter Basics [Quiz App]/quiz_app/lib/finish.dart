import 'package:flutter/material.dart';

class Finish extends StatelessWidget {
  final score;
  final Function restart;
  Finish(this.score, this.restart);
  String get resultPhrase {
    var resultText = 'You have dark and attractive personality ! ';
    if (score <= 0)
      resultText = 'You are friendly  ';
    else if (score == 30)
      resultText = 'To be noticed';
    else if (score == 15) resultText = 'Talkative personality !';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(30, 80, 30, 30),
          child: Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ),
        OutlineButton(
          child: Text("Restart"),
          onPressed: restart,
          textColor: Colors.blue,
          highlightElevation: 5,
          padding: EdgeInsets.all(2),
        )
      ],
    ));
  }
}
