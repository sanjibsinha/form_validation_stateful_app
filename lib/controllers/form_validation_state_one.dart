import 'package:flutter/material.dart';

/**
 * inheriting StatefulWidget makes a class immutable
 */

class FormValidationAndStateApp extends StatefulWidget {
  /**
   * the widget returns the state in createState() method
   */
  @override
  _FormValidationAndStateAppState createState() => _FormValidationAndStateAppState();
}
/**
 * a simple example of state where user presses a button to see a list of quotes
 */
class _FormValidationAndStateAppState extends State<FormValidationAndStateApp> {

  var _quotes = [
    '',
    'Life is a Tragedy',
    'Life is Beautiful',
    'Life consists of problems to solve',
  ];

  int _questionIndex = 0;

  int _answerQuestions() {
    /**
     * calling the setState() method makes the change and redraw the widget
     */
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if(_questionIndex == 4) {
      _questionIndex = 0;
    }
    return _questionIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RaisedButton(
              padding: EdgeInsets.all(32.0),
              child: Text(
                'Press the button to see a new quote!',
                style: TextStyle(
                  fontSize: 22,
                  //color: Colors.blue,
                ),
              ),
              onPressed: () {
                _answerQuestions();
              },
              disabledColor: Colors.blueAccent,
            ),
            SizedBox(height: 10.0,),
            Text(
              '${_quotes[_questionIndex]}',
              style: TextStyle(
                fontSize: 40.0,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
