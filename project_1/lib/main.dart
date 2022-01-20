import 'package:flutter/material.dart';

import './question.dart';

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

  var _question = [
    'What\'s your favorite color',
    'What\'s your favorite animal'
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
            Question(_question
                .elementAt(_questionIndex)), // or question[questionIndex]
            RaisedButton(child: Text('Answer 1'), onPressed: _answerQuestions),
            RaisedButton(
                // deprecated - RaisedButton, so use ElevatedButton
                child: Text('Answer 2'),
                onPressed: () => print('selected 2')),
            RaisedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print('selected 3');
                }),
          ],
        ),
      ),
    );
  }
}
