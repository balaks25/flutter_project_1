import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // ignore: deprecated_member_use
      child: RaisedButton(
          color: Colors.blue,
          child: Text(answerText),
          onPressed: selectHandler),
    );
  }
}

// RaisedButton(child: Text('Answer 1'), onPressed: _answerQuestions),
// Or

// RaisedButton( // deprecated - RaisedButton, so use ElevatedButton
//   child: Text('Answer 2'),
//   onPressed: () => print('selected 2')),
// Or

// RaisedButton(
//   child: Text('Answer 3'),
//   onPressed: () {
//      print('selected 3');
//        }) async,