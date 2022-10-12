import 'package:flutter/material.dart';

void main() {
  runApp(const MyComponents());
}

class MyComponents extends StatelessWidget {
  const MyComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Block(),
    );
  }
}

class Block extends StatelessWidget {
  const Block({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 75,
          color: Colors.blue,
        ),
        Container(
          height: 123,
          width: 45,
          color: Colors.amber,
        ),
        Container(
          height: 150,
          width: 137,
          color: Colors.lime,
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.redAccent,
        ),
      ],
    );
  }
}
