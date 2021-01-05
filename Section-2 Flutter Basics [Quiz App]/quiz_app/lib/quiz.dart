import 'package:flutter/material.dart';

import './question.dart';
import './button.dart';

class Quiz extends StatelessWidget {
  // although our key is String
  // our values can be anything -  object
  final List<Map<String, Object>> questions;
  final int index;
  final Function answerQuestion;
  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.index});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[index]['questionText']),
        // we first took all elements of a list
        // on each element i.e. answers we are performing some function
        // Therefore ... pulling all the answers into list
        //and treating them as individual list in container rather than creating mutliple same widgets for the same .
        ...(questions[index]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
