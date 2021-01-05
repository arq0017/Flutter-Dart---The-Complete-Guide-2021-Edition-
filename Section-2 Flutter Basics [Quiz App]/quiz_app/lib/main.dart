import 'package:flutter/material.dart';
// call question.dart file and check if class is public or not
import './finish.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// State is generic class
// we created new object based on MYApp class
class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite car?',
      'answers': [
        {'text': 'Tesla', 'score': 10},
        {'text': 'Mustang', 'score': 5},
        {'text': 'Maserati', 'score': 20},
        {'text': 'Porsche', 'score': -5}
      ],
    },
    {
      'questionText': 'Which color do you like ?',
      'answers': [
        {'text': 'red', 'score': 10},
        {'text': 'green', 'score': 5},
        {'text': 'black', 'score': 20},
        {'text': 'blue', 'score': -5}
      ],
    },
    {
      'questionText': 'Who\'s your favourite marvel character ?',
      'answers': [
        {'text': 'Deadpool', 'score': 10},
        {'text': 'Thor', 'score': 5},
        {'text': 'Thanos', 'score': 20},
        {'text': 'Ironman', 'score': -5}
      ]
    }
  ];
  int index = 0;
  int totalScore = 0;
  // calling restart function in order to notify sysyem
  // some interanl changes has occured
  void restart() {
    setState(() {
      index = 0;
      totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      totalScore += score;
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
          backgroundColor: Colors.red,
        ),
        body: (index < _questions.length)
            ? Quiz(
                answerQuestion: _answerQuestion,
                index: index,
                questions: _questions,
              )
            : Finish(totalScore, restart),
      ),
    );
  }
}

// const is compile time constant
// final is runtime constant
