import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_quiz/dataFetcher.dart';
import 'package:online_quiz/result.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _selected;
  int _questionCount =1;
  int _score=0;

  var _data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text("Qize"),
        ),
        body: _data != null? Container(
          width: double.infinity,
          margin: EdgeInsets.all(10.0),
          child: Column(
                  children: <Widget>[
                    Text(_data['question'],
                      style: TextStyle(fontSize: 30.0),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 30.0, 0, 0),
                      width: double.infinity,
                      child: ListTile(
                        title: Text(_data['option1'],),
                        leading: Radio(
                          groupValue: _selected,
                          value: 1,
                          onChanged: (value){
                            setState(() {
                              _selected = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: ListTile(
                        title: Text(_data['option2']),
                        leading: Radio(
                          groupValue: _selected,
                          value: 2,
                          onChanged: (value){
                            setState(() {
                              _selected = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: ListTile(
                        title: Text(_data['option3']),
                        leading: Radio(
                          groupValue: _selected,
                          value: 3,
                          onChanged: (value){
                            setState(() {
                              _selected = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: ListTile(
                        title: Text(_data['option4']),
                        leading: Radio(
                          groupValue: _selected,
                          value: 4,
                          onChanged: (value){
                            setState(() {
                              _selected = value;
                            });
                          },
                        ),
                      ),
                    ),
                    FloatingActionButton(
                      child: Icon(
                        Icons.navigate_next,
                      ),
                      backgroundColor: Colors.lightGreen,
                      onPressed: (){
                        setState(() {
                          _questionCount++;
                          if(_selected== int.parse(_data["answer"]))
                            _score++;
                          _selected=0;
                          _data = null;
                          if(_questionCount>10) {
                            _questionCount = 1;
                            _score = 0;
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) =>
                                    Result(_score)));
                          }
                            //Navigator.push(context, MaterialPageRoute(builder: (context) => Result()));
                        });

                        getQuestion();
                      },
                    ),
                  ],
                ),
        ) : Center(child: CircularProgressIndicator()),
      );
  }
  void initState(){
    getQuestion();
  }

  void getQuestion(){
    DataFetcher().getQuestion(_questionCount).then((value) => setState((){
      _data = value;
    })
    );
  }
}
