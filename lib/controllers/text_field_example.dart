import 'package:flutter/material.dart';

class TextFieldExample extends StatefulWidget {
  @override
  _TextFieldExampleState createState() => _TextFieldExampleState();
}
/**
 * a simple example of TextField, where one can type the name
 * and see the output below; each time user types a String data type or text, a stateful widget
 * is created, however, after that when she re-type another text, the set state is called, which
 * tells the framework to redraw the TextFieldExampleState widget and it's created again
 */

class _TextFieldExampleState extends State<TextFieldExample> {

  String yourName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text(
                'Type your name below!',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            TextField(
              /*
              onSubmitted: (String name) {
                setState(() {
                  yourName = name;
                });
              },
               */
              /// it reflects the text input on the screen while typing
              onChanged: (String name) {
                setState(() {
                  yourName = name;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text(
                yourName,
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
