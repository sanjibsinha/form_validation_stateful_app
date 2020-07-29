import 'package:flutter/material.dart';
import 'package:form_validation_stateful_app/controllers/dropdown_item_example.dart';
import 'package:form_validation_stateful_app/controllers/form_validation_state_one.dart';
import 'package:form_validation_stateful_app/controllers/text_field_app.dart';
import 'package:form_validation_stateful_app/controllers/text_field_example.dart';

/**
 * the state is mutable and might change during the lifetime of the widget
 * each time it redraws the widget whenever the state is changed
 * CheckBox, TextField, RadioButton or Form are examples of Stateful widgets
 * in this repository, which is linked to the chapter 7 of the book
 * Beginning Flutter with Dart, we will learn how to work with these widgets
 */

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Form validation and State',
      //home: FormValidationAndStateApp(),
      //home: TextFieldExample(),
      home: DropDownExample(),
      //home: TextFieldApp(),
    );
  }
}




