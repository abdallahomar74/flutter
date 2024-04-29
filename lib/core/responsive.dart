import 'package:flutter/material.dart';

// ignore: camel_case_extensions
extension responsive on BuildContext{
  double get height => MediaQuery.of(this).size.height;
   double get width => MediaQuery.of(this).size.width;
}