import 'package:flutter/material.dart';

class TextFieldApp extends StatefulWidget {
  @override
  _TextFieldAppState createState() => _TextFieldAppState();
}

class _TextFieldAppState extends State<TextFieldApp> {

  TextEditingController textOfName = TextEditingController();

  String _displayText = '';

  String displayAllSelectedValue() {
    String name = textOfName.text;
    String result = 'Name is: ${name}';
    return result;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.text,
                controller: textOfName,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.blue,
                ),
                decoration: InputDecoration(
                  labelText: 'Your Nmae',
                  hintText: 'In text...',
                  labelStyle: TextStyle(
                    fontSize: 17.0,
                    color: Colors.red,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              SizedBox(height: 10.0,),
              Row(
                children: <Widget>[
                  Container(
                    width: 150.0,
                    child: RaisedButton(
                      color: Colors.white24,
                      textColor: Colors.redAccent,
                      child: Text('Press'),
                      onPressed: () {
                        setState(() {
                          this._displayText = displayAllSelectedValue();
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0,),
              Text(
                '${_displayText}',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.redAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
