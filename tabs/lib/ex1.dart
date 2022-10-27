import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final tabs = const [
    Tab(text: 'CATIOROS'),
    Tab(text: 'GATINEOS'),
    Tab(text: 'PASSARINEOS'),
  ];

  final tabView = const [
    Center(
      child: Text('CATIOROS'),
    ),
    Center(
      child: Text('GATINEOS'),
    ),
    Center(
      child: Text('PASSARINEOS'),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Meu Pet: A loja do seu pet'),
            leading: Image.asset('assets/paw_logo.png'),
            backgroundColor: Colors.deepPurple.shade300,
            bottom: TabBar(
              indicatorColor: Colors.pinkAccent,
              tabs: tabs,
            ),
          ),
          body: TabBarView(children: tabView),
        ),
      ),
    );
  }
}
