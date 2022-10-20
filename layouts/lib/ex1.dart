import 'package:flutter/material.dart';
import 'package:layouts/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee',
      themeMode: ThemeMode.light,
      theme: MyAppBarTheme.light,
      darkTheme: MyAppBarTheme.dark,
      home: const MyAppBar(),
    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      // backgroundColor: theme.colorScheme.primary,
      appBar: AppBar(
        title: const Text(
          'Coffee',
          style: TextStyle(
            color: Colors.brown,
          ),
        ),
        backgroundColor: theme.colorScheme.primary,
        leading: const Icon(
          Icons.coffee,
          color: Colors.brown,
          size: 35,
        ),
      ),
    );
  }
}
