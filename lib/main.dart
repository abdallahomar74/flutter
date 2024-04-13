import 'package:flutter/material.dart';
import 'package:section_project/features/login/view/page/login_page.dart';

void main() {
 
  // ignore: non_constant_identifier_names
  MaterialApp MyApp =const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: login_page(),
  );
  

   runApp(MyApp);
}

