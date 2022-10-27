import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final tabs = const [
    Tab(
      text: 'Tab 1',
    ),
    Tab(
      text: 'Tab 2',
    ),
    Tab(
      text: 'Tab 3',
    ),
    Tab(
      text: 'Tab 4',
    ),
    Tab(
      text: 'Tab 5',
    ),
    Tab(
      text: 'Tab 6',
    ),
    Tab(
      text: 'Tab 7',
    ),
    Tab(
      text: 'Tab 8',
    ),
    Tab(
      text: 'Tab 9',
    ),
  ];

  final tabView = const [
    Center(child: Text('Tab 1')),
    Center(child: Text('Tab 2')),
    Center(child: Text('Tab 3')),
    Center(child: Text('Tab 4')),
    Center(child: Text('Tab 5')),
    Center(child: Text('Tab 6')),
    Center(child: Text('Tab 7')),
    Center(child: Text('Tab 8')),
    Center(child: Text('Tab 9')),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Tab Scroll'),
              backgroundColor: Colors.deepPurple,
              bottom: TabBar(
                tabs: tabs,
                isScrollable: true,
              ),
            ),
            body: TabBarView(children: tabView)),
      ),
    );
  }
}
