import 'package:flutter/material.dart';

void main() {
  runApp(MyNavigationBar());
}

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bottom Navigation Bar DEMO'),
          backgroundColor: Colors.blueAccent,
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey.shade300,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.login),
              label: 'Login',
            )
          ],
        ),
        body: const Center(
          child: Text('Home'),
        ),
      ),
    );
  }
}
