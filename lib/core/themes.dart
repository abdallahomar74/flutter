import 'package:flutter/material.dart';

class Themes {
static final Themes singelob = Themes();

ThemeData light = ThemeData.light(useMaterial3: true).copyWith(
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: Colors.black,
    )
  ),


  buttonTheme: const ButtonThemeData(
    colorScheme: ColorScheme.light(
      background: Colors.greenAccent
    )
  ),


  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.greenAccent
  )
);



ThemeData dark = ThemeData.light(useMaterial3: true).copyWith(
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: Colors.white,
    )
  ),


  buttonTheme: const ButtonThemeData(
    colorScheme: ColorScheme.light(
      background: Colors.orange
    )
  ),


  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.orange
  )
);
}