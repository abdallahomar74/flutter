import 'package:flutter/material.dart';
import 'package:section_project/core/extention_responsive&theme.dart';




// ignore: camel_case_types
class bottomnavigationbar_login extends StatelessWidget {
  const bottomnavigationbar_login({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextButton(onPressed:() {
     Navigator.pushNamed(context, 'registration');
    },child:  Text('creat a new account?',style: TextStyle(
      color: context.button_color,
      fontSize: 20
    ),));
  }
}