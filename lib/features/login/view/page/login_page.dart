import 'package:flutter/material.dart';
import 'package:section_project/features/login/view/components/body_login.dart';
import 'package:section_project/features/login/view/components/bottomnavigationbar_login.dart';

// ignore: camel_case_types
class login_page extends StatelessWidget {
  const login_page({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: body_login(),
      bottomNavigationBar: bottomnavigationbar_login(),
    );
  }
}