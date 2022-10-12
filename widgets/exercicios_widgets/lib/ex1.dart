import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Coin {
  int copper = 0;
  int silver = 0;
  int gold = 0;
  int total = 0;

  void increment() {
    total++;
    copper++;
    if (copper > 9) {
      silver++;
      copper = 0;
    }
    if (silver > 9) {
      gold++;
      silver = 0;
    }
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Coin coin = Coin();
  List<Map<String, dynamic>> texts = [];

  void updateCount() {
    setState(() {
      coin.increment();
    });
  }

  @override
  Widget build(BuildContext context) {
    texts = [
      {'title': "Copper", 'value': coin.copper},
      {'title': "Silver", 'value': coin.silver},
      {'title': "Gold", 'value': coin.gold}
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cliques: ${coin.total}"),
        ),
        body: Center(
          child: GestureDetector(
            onTap: updateCount,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: texts
                    .map((e) => Text(
                          '${e["title"]} : ${e["value"]}',
                          style: const TextStyle(
                            fontSize: 32,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ))
                    .toList()),
          ),
        ),
      ),
    );
  }
}
