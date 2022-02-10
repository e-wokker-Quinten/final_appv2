import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

//void main() {
//  runApp(MyApp());
//}

class MyAppQuiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppQuizState();
  }
}

class _MyAppQuizState extends State<MyAppQuiz> {
  var _questionIndex = 0;

  final _questions = const [
    {
      'questionText': 'What\'s my favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 1},
        {'text': 'White', 'score': 10},
      ],
    },
    {
      'questionText': 'What\'s my favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 8},
        {'text': 'Lion', 'score': 4},
        {'text': 'Snake', 'score': 10},
        {'text': 'Elephant', 'score': 2},
        {'text': 'Sam the man', 'score': 1},
      ],
    },
    {
      'questionText': 'Are you in possesion of an e-bike?',
      'answers': [
        {'text': 'yes', 'score': 10},
        {'text': 'no', 'score': 4},
        {'text': 'no eww', 'score': 1}
      ],
    },
  ];

  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('no more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Text('Friendship eligibility quiz',
                  style: TextStyle(fontFamily: 'RobotoSlabs')),
              backgroundColor: Colors.blueGrey),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                )
              : Results(_totalScore)),
    );
  }
}
