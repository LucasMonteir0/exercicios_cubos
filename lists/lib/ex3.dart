import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Map<String, dynamic>> arcoIris = [
    {'text': 'Vermelho', 'cor': Colors.red},
    {'text': 'Laranja', 'cor': Colors.orange},
    {'text': 'Amarelo', 'cor': Colors.yellow},
    {'text': 'Verde', 'cor': Colors.green},
    {'text': 'Azul', 'cor': Colors.blue},
    {'text': 'Anil', 'cor': Colors.indigo},
    {'text': 'Violeta', 'cor': Colors.deepPurple},
  ];

  void tapColors() {
    setState(() {
      arcoIris += arcoIris;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          elevation: 10,
          onPressed: tapColors,
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink,
          title: const Text('VLAVAAV Horizontal'),
        ),
        body: ListView(
            scrollDirection: Axis.horizontal,
            children: arcoIris
                .map((e) => Container(
                    width: 57,
                    color: e['cor'],
                    child: Center(
                        child: RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              e['text'],
                              style: const TextStyle(
                                  fontSize: 30, color: Colors.white),
                            )))))
                .toList()),
      ),
    );
  }
}
