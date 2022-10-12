import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class StoneFragments {
  int fragments = 0;
  int pieces = 0;
  int stones = 0;
  int cliques = 0;
  dynamic stoneImage = Image.asset('assets/fragment.png');

  void incrementStones() {
    cliques++;
    fragments++;
    if (fragments > 9) {
      pieces++;
      fragments = 0;
    }
    if (pieces > 9) {
      stones++;
      pieces = 0;
    }
  }

  void changeImage() {
    if (fragments > 9) {
      stoneImage = Image.asset('assets/piece.png');
    }
    if (pieces > 9) {
      stoneImage = Image.asset('assets/stone.png');
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

  void updateImage() {
    setState(() {
      stoneFragments.changeImage();
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
          title: Text('Cliques: ${stoneFragments.cliques}'),
        ),
        body: Container(
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
                GestureDetector(
                  onTap: updateClicks,
                  child: Image.asset('assets/fragment.png'),
                ),
                const Text(
                  'Clique na pedra',
                  style: TextStyle(fontSize: 15, color: Colors.white),
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
    );
  }
}
