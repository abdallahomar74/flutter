import 'package:flutter/material.dart';
import 'package:section_project/core/validation.dart';

// ignore: camel_case_types, must_be_immutable
class custom_textfield extends StatelessWidget {
   // ignore: use_key_in_widget_constructors
   custom_textfield({ this.labelText, this.hintText, this.obscuer = false,required this.icon });
  String? labelText;
  String? hintText;
  bool obscuer; 
  Icon icon ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(19),
          borderSide: const BorderSide(
            color: Colors.grey
          )
        ),
        focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Colors.blue
          )
        ),
        errorBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Colors.red
          )
        ),
        labelText: labelText,
        floatingLabelAlignment: FloatingLabelAlignment.center,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: hintText, 
        suffixIcon: icon,
        suffixIconColor: Colors.grey
      ),
      validator: validation().validat,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller:TextEditingController() ,
      obscureText: obscuer,
      obscuringCharacter: '&',
    );
  }
}