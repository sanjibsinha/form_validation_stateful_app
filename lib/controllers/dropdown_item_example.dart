import 'package:flutter/material.dart';

class DropDownExample extends StatefulWidget {
  @override
  _DropDownExampleState createState() => _DropDownExampleState();
}

class _DropDownExampleState extends State<DropDownExample> {

  String yourName = '';
  String yourAge = '';
  var _cities = ["Calcutta", "Delhi", "Mumbai", "Chennai", "Bangalore"];
  String _youHaveSelected = '';
  String _displayText = '';

  @override
  void initState() {
    super.initState();
    _youHaveSelected = _cities[0];
  }

  TextEditingController textOfAge  = TextEditingController();
  TextEditingController textOfName  = TextEditingController();

  void selectedDropDownItem(String theValueSelected) {
    setState(() {
      this._youHaveSelected = theValueSelected;
    });
  }

  String displayAllSelectedValue() {

    String name = textOfName.text;
    int age = int.parse(textOfAge.text);
    String city = _youHaveSelected;

    String displayAllSelectedValues = 'Your name is ${name}, your age is ${age}'
        ' and you live in ${city}';

    return displayAllSelectedValues;

  }

  void _resetButton() {

    textOfName.text = '';
    textOfAge.text = '';
    _youHaveSelected = _cities[0];
    _displayText = '';

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Type your name, age, and select the city from the drop down menu below.',
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              controller: textOfName,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.blue,
              ),
              decoration: InputDecoration(
                labelText: 'Your Name',
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
            TextField(
              keyboardType: TextInputType.text,
              controller: textOfAge,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.blue,
              ),
              decoration: InputDecoration(
                labelText: 'Your Age',
                hintText: 'In number...',
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
            Padding(
              padding: const EdgeInsets.only(left: 32.0, top: 10.0),
              child: DropdownButton<String>(
                items: _cities.map((String nameOfCities) {
                  return DropdownMenuItem<String>(
                    value: nameOfCities,
                    child: Text(nameOfCities),
                  );
                }).toList(),
                onChanged: (String theValueSelected) {
                  selectedDropDownItem(theValueSelected);
                },
                value: _youHaveSelected,
                iconSize: 50.0,
              ),
            ),
            SizedBox(height: 100.0,),
            Row(
              children: <Widget>[
                Container(
                  width: 150.0,
                  child: RaisedButton(
                    color: Colors.white24,
                    textColor: Colors.redAccent,
                    child: Text('Press', style: TextStyle(fontSize: 25.0),),
                    onPressed: () {
                      setState(() {
                        this._displayText = displayAllSelectedValue();
                      });
                    },
                  ),
                ),
                Container(width: 25.0,),
                Container(
                  width: 150.0,
                  child: RaisedButton(
                    color: Colors.black,
                    textColor: Colors.yellow,
                    child: Text('Reset', style: TextStyle(fontSize: 25.0),),
                    onPressed: () {
                      setState(() {
                        _resetButton();
                      });
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${_displayText}',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.blueAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

