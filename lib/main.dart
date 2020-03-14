/* TODO: Use enum instead of using multiple views to switch between widgets
    * Example: https://medium.com/flutterpub/switching-widgets-885d9b5b5c6f
    Make Widget dynamic => Swap questions in and out of single widget
 */

import 'package:flutter/material.dart';

void main() => runApp(Home());

/// This Widget is the main application widget.
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Code Sample",
      home: Scaffold(
        appBar: AppBar(title: Text("First Question")),
        body: QuestionOneWidget(),
      ),
    );
  }
}

enum QuestionOne { sample_A, sample_B}
enum QuestionTwo { sample_A, sample_B}
enum QuestionThree { sample_A, sample_B}

class QuestionOneWidget extends StatefulWidget {
  QuestionOneWidget({Key key}) : super(key: key);

  @override
  _QuestionOneWidgetState createState() => _QuestionOneWidgetState();
}

class _QuestionOneWidgetState extends State<QuestionOneWidget> {
  QuestionOne _questionOneValue = QuestionOne.sample_A;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                child: Image.asset('images/Test.png'),
              ),
              const ListTile(
                leading: Icon(Icons.chat),
                title: Text('The Question Title'),
                subtitle: Text('Question Text indicating issues and problems.'),
              ),
              /*ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('BUY TICKETS'),
                    onPressed: () {/* ... */},
                  ),
                  FlatButton(
                    child: const Text('LISTEN'),
                    onPressed: () {/* ... */},
                  ),
                ],
              ),*/
            ],
          ),
        ),
        RadioListTile<QuestionOne>(
          title: Text('Answer One Text'),
          value: QuestionOne.sample_A,
          groupValue: _questionOneValue,
          onChanged: (QuestionOne value) {
            setState(() {
              _questionOneValue = value;
            });
          },
        ),
        RadioListTile<QuestionOne>(
          title: Text('Answer Two Text'),
          value: QuestionOne.sample_B,
          groupValue: _questionOneValue,
          onChanged: (QuestionOne value) {
            setState(() {
              _questionOneValue = value;
            });
          },
        ),
        RaisedButton(
          child: Text('Submit'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QuestionTwoView()),
            );
          },
        ),
      ],
    );
  }
}

class QuestionTwoView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Code Sample",
      home: Scaffold(
        appBar: AppBar(title: Text("Second Question")),
        body: Column(
          children: <Widget>[
            QuestionTwoWidget(),
            RaisedButton(
                child: Text('Return'),
                onPressed: () {
                  Navigator.pop(context);
                }
            ),
          ]
        ),
      ),
    );
  }
}

class QuestionTwoWidget extends StatefulWidget {
  QuestionTwoWidget({Key key}) : super(key: key);

  @override
  _QuestionTwoWidgetState createState() => _QuestionTwoWidgetState();
}

class _QuestionTwoWidgetState extends State<QuestionTwoWidget> {
  QuestionTwo _questionTwoValue = QuestionTwo.sample_A;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                child: Image.asset('images/Test.png'),
              ),
              const ListTile(
                leading: Icon(Icons.chat),
                title: Text('The Question Title'),
                subtitle: Text('Question Text indicating issues and problems.'),
              ),
              /*ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('BUY TICKETS'),
                    onPressed: () {/* ... */},
                  ),
                  FlatButton(
                    child: const Text('LISTEN'),
                    onPressed: () {/* ... */},
                  ),
                ],
              ),*/
            ],
          ),
        ),
        RadioListTile<QuestionTwo>(
          title: Text('Answer One Text'),
          value: QuestionTwo.sample_A,
          groupValue: _questionTwoValue,
          onChanged: (QuestionTwo value) {
            setState(() {
              _questionTwoValue = value;
            });
          },
        ),
        RadioListTile<QuestionTwo>(
          title: Text('Answer Two Text'),
          value: QuestionTwo.sample_B,
          groupValue: _questionTwoValue,
          onChanged: (QuestionTwo value) {
            setState(() {
              _questionTwoValue = value;
            });
          },
        ),
        RaisedButton(
          child: Text('Submit'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QuestionThreeView()),
            );
          },
        ),
      ],
    );
  }
}

class QuestionThreeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Code Sample",
      home: Scaffold(
        appBar: AppBar(title: Text("Third Question")),
        body: Column(
            children: <Widget>[
              QuestionThreeWidget(),
              RaisedButton(
                  child: Text('Return'),
                  onPressed: () {
                    Navigator.pop(context);
                  }
              ),
            ]
        ),
      ),
    );
  }
}

class QuestionThreeWidget extends StatefulWidget {
  QuestionThreeWidget({Key key}) : super(key: key);

  @override
  _QuestionThreeWidgetState createState() => _QuestionThreeWidgetState();
}

class _QuestionThreeWidgetState extends State<QuestionThreeWidget> {
  QuestionThree _questionThreeValue = QuestionThree.sample_A;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                child: Image.asset('images/Test.png'),
              ),
              const ListTile(
                leading: Icon(Icons.chat),
                title: Text('The Question Title'),
                subtitle: Text('Question Text indicating issues and problems.'),
              ),
            ],
          ),
        ),
        RadioListTile<QuestionThree>(
          title: Text('Answer One Text'),
          value: QuestionThree.sample_A,
          groupValue: _questionThreeValue,
          onChanged: (QuestionThree value) {
            setState(() {
              _questionThreeValue = value;
            });
          },
        ),
        RadioListTile<QuestionThree>(
          title: Text('Answer Two Text'),
          value: QuestionThree.sample_B,
          groupValue: _questionThreeValue,
          onChanged: (QuestionThree value) {
            setState(() {
              _questionThreeValue = value;
            });
          },
        ),
        RaisedButton(
          child: Text('Submit'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EndsScreenView() ),
            );
          },
        ),
      ],
    );
  }
}

class EndsScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Code Sample",
      home: Scaffold(
        appBar: AppBar(title: Text("End View")),
        body: Column(
            children: <Widget>[
              ResultWidget(),
              RaisedButton(
                  child: Text('Exit'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home() ),
                    );
                  }
              ),
            ]
        ),
      ),
    );
  }
}

class ResultWidget extends StatefulWidget {

  @override
  _ResultWidgetState createState() => _ResultWidgetState();
}

class _ResultWidgetState extends State<ResultWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Results Here => *',
        style: TextStyle(
          fontSize: 30.0,
        ),
      ),
    );
  }
}