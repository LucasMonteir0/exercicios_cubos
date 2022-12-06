import 'package:flutter/material.dart';

class BoomTheme {
  static ThemeData theme() {
    return ThemeData(
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              backgroundColor: const Color(0xFFEB5757),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              textStyle:
                  const TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700)),
        ));
  }
}
