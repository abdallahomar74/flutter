
import 'package:flutter/material.dart';
import 'package:section_project/features/registration/view/components/body_registration.dart';
import 'package:section_project/features/registration/view/components/bottomnavigationbar_registration.dart';
// ignore: camel_case_types
class Registration_page extends StatelessWidget {
  const Registration_page({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  const Scaffold(
      
      body:body_registration() ,
      bottomNavigationBar: bottomnavigationbar_registration(),
    );
  }
}