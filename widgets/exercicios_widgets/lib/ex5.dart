import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class StoneFragments {
  int fragments = 0;
  int pieces = 0;
  int stones = 0;
  int cliques = 0;
  String asset = 'assets/fragment.png';
  dynamic appBarColor = Colors.blue;

  void incrementStones() {
    cliques++;
    fragments++;
    if (fragments > 9) {
      pieces++;
      fragments = 0;
      asset = 'assets/piece.png';
      appBarColor = Colors.lightBlueAccent;
    }
    if (pieces > 9) {
      stones++;
      pieces = 0;
      asset = 'assets/stone.png';
      appBarColor = const Color.fromARGB(255, 188, 222, 242);
    }
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final StoneFragments stoneFragments = StoneFragments();
  List<Map<String, dynamic>> texts = [];

  void updateClicks() {
    setState(() {
      stoneFragments.incrementStones();
    });
  }

  @override
  Widget build(BuildContext context) {
    texts = [
      {'title': "Fragments", 'value': stoneFragments.fragments},
      {'title': "Pieces", 'value': stoneFragments.pieces},
      {'title': "Stones", 'value': stoneFragments.stones}
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: stoneFragments.appBarColor,
          title: Text(
            'Cliques: ${stoneFragments.cliques}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: GestureDetector(
          onTap: updateClicks,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/background_stones.jpeg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    stoneFragments.asset,
                  ),
                  const Text(
                    'Touch on screen',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                      children: texts
                          .map(
                            (e) => Text(
                              '${e["title"]} : ${e["value"]}',
                              style: const TextStyle(
                                fontSize: 32,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                          .toList())
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
