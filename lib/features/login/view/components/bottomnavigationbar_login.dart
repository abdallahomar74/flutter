import 'package:flutter/material.dart';



// ignore: camel_case_types
class bottomnavigationbar_login extends StatelessWidget {
  const bottomnavigationbar_login({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextButton(onPressed:() {
     Navigator.pushNamed(context, 'registration');
    },child: const Text('creat a new account?',style: TextStyle(
      color: Colors.orangeAccent,
      fontSize: 20
    ),));
  }
}