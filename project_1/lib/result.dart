// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final resultScore;
  final Function resultHander;

  Result(this.resultScore, this.resultHander);

  String get resultPhase {
    if (resultScore <= 10) {
      return 'You are not bad';
    } else if (resultScore <= 20) {
      return 'You are nice';
    } else if (resultScore <= 30) {
      return 'You are good';
    }
    return 'You are awasome';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhase,
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          ),
          // ignore: missing_required_param
          FlatButton(
            child: Text(
              'Reset Quiz',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            onPressed: resultHander,
          )
        ],
      ),
    );
  }
}
