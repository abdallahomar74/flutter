import 'package:flutter/material.dart';
import 'package:section_project/features/forgit_pass1/view/components/body_forget_pass1.dart';

// ignore: camel_case_types
class forget_pass1_page extends StatelessWidget {
  const forget_pass1_page({super.key});

  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      body: const body_forget_pass1() ,
      
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text('forget password'),
        centerTitle: true
      ),
    );
  }
}