import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  var _questionIndex = 0;

  var question = [
    {
      'question': 'what\'s you favorite color?',
      'answer': ['Red', 'Black', 'White', 'Blue']
    },
    {
      'question': 'who\'s you favorite animal?',
      'answer': ['Dog', 'Cat', 'Lion']
    },
    {
      'question': 'who\'s you favorite player?',
      'answer': ['Dhoni', 'Vk', 'Sachin']
    },
  ];

  void _answerQuestions() {
    setState(() {
      _questionIndex += 1;
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(question[_questionIndex]
                ['question']), // or question[questionIndex]
            ...(question[_questionIndex]['answer'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestions, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
