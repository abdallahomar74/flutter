import 'package:flutter/material.dart';


// ignore: camel_case_types
class bottomnavigationbar_registration extends StatelessWidget {
  const bottomnavigationbar_registration({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {
      Navigator.pushNamed(context, 'login');
    }, child: const Text("have an account?",style: TextStyle(fontSize: 18,color: Colors.orange),));
  }
}