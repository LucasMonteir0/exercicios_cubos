import 'package:flutter/material.dart';
import 'package:layouts/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // themeMode: ThemeMode.light,
      // theme: MyDrawerTheme.light,
      // darkTheme: MyDrawerTheme.dark,
      home: MyDrawerApp(),
    );
  }
}

class MyDrawerApp extends StatelessWidget {
  const MyDrawerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Drawer'),
        backgroundColor: Colors.pink.shade700,
      ),
      drawer: Drawer(
        backgroundColor: Colors.pink.shade100,
        child: ListView(
          children: const [
            Icon(
              Icons.bluetooth,
            ),
            
          ],
        ),
      ),
    );
  }
}
