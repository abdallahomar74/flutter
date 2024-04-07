import 'package:flutter/material.dart';
import 'package:section_project/features/verification/view/components/body_verification.dart';

// ignore: camel_case_types
class verification_page extends StatelessWidget {
  const verification_page({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Scaffold(
      body: body_verification(),
     
    );
  }
}