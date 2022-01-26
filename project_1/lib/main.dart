import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState(); // adding _ makes that property / state private, prevent override.
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  // final question = const [ (or)
  static const _questions = [
    {
      'question': 'what\'s you favorite color?',
      'answer': [
        {'text': 'Red', 'score': 5},
        {'text': 'Black', 'score': 10},
        {'text': 'White', 'score': 3},
        {'text': 'White', 'score': 7},
      ]
    },
    {
      'question': 'who\'s you favorite animal?',
      'answer': [
        {'text': 'Dog', 'score': 9},
        {'text': 'Lion', 'score': 10},
        {'text': 'Cat', 'score': 5},
      ]
    },
    {
      'question': 'who\'s you favorite player?',
      'answer': [
        {'text': 'Vk', 'score': 8},
        {'text': 'Dhoni', 'score': 10},
        {'text': 'Sachin', 'score': 9},
      ]
    },
  ];

  void _answerQuestions(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestions: _answerQuestions,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
