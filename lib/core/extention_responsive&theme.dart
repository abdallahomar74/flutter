import 'package:flutter/material.dart';

// ignore: camel_case_extensions
extension responsiveandtheme on BuildContext{
  double get height => MediaQuery.of(this).size.height;
   double get width => MediaQuery.of(this).size.width;

  TextStyle? get Text1 => Theme.of(this).textTheme.bodyLarge;

  Color get button_color => Theme.of(this).buttonTheme.colorScheme!.background;
}