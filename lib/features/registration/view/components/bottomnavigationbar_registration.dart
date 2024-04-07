import 'package:flutter/material.dart';
import 'package:section_project/features/login/view/page/login_page.dart';

// ignore: camel_case_types
class bottomnavigationbar_registration extends StatelessWidget {
  const bottomnavigationbar_registration({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
        return const login_page();
      },));
    }, child: const Text("have an account?",style: TextStyle(fontSize: 18,color: Colors.orange),));
  }
}