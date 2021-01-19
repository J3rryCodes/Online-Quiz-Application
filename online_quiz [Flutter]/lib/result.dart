

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Result extends StatefulWidget {
  int _score;
  Result(this._score);

  @override
  _ResultState createState() => _ResultState(_score);
}

class _ResultState extends State<Result> {
  int _score;
  _ResultState(this._score);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: CircularPercentIndicator(
            progressColor: Colors.lightGreen,
            lineWidth: 15.0,
            radius: 200.0,
            animation: true,
            animationDuration: 200,
            percent: _score!=0?_score/10:0,
            center: Text(_score.toString()+"/10", style: TextStyle(fontSize: 40),),
          ),
        ),
      );
  }
}
