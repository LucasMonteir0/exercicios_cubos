import 'package:flutter/material.dart';

class PomoTheme {
  static ThemeData theme() {
    return ThemeData(
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.pinkAccent,
          elevation: 0,
          titleTextStyle: TextStyle(fontSize: 26, fontWeight: FontWeight.w600)),
      scaffoldBackgroundColor: Colors.pinkAccent,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            backgroundColor: Colors.white,
            foregroundColor: Colors.pinkAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
      ),
      textTheme: const TextTheme(
        bodyText2: TextStyle(
          color: Colors.white,
          fontSize: 50,
          fontWeight: FontWeight.bold,
        ),
        subtitle1: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
