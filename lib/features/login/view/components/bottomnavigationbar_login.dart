import 'package:flutter/material.dart';
import 'package:section_project/features/registration/view/page/registration_page.dart';


// ignore: camel_case_types
class bottomnavigationbar_login extends StatelessWidget {
  const bottomnavigationbar_login({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextButton(onPressed:() {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return const Registration_page();
      },));
    },child: const Text('creat a new account?',style: TextStyle(
      color: Colors.orangeAccent,
      fontSize: 20
    ),));
  }
}