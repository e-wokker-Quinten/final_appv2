import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

//void main() {
//  runApp(MyApp());
//}
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Greenm', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 8},
        {'text': 'Lion', 'score': 4},
        {'text': 'Snake', 'score': 10},
{'text': 'Elephant', 'score': 2}, 	      
        {'text': 'Sam the man', 'score': 1},
      ],
    },
    {
      'questionText': 'Who\' your favorite instructor?',
      'answers': [
        {'text': 'D       N', 'score': 1},
        {'text': 'E       U', 'score': 1},
        {'text': 'E       T', 'score': 1},
        {'text': 'Z       S', 'score': 1},
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
              title:
                  Text('My First App', style: TextStyle(color: Colors.black)),
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
