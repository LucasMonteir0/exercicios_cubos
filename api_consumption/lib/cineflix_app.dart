import 'package:api_consumption/view/home_page.dart';
import 'package:flutter/material.dart';

class CineflixApp extends StatelessWidget {
  const CineflixApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: HomePage(),
    );
  }
}
