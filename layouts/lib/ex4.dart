import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String frasePrincipal = 'Clique para iniciar o upload.';
  var rng = 0.0;
  var totalValue = 1.0;

  String textState(double num) {
    if (num == 0) {
      return 'Clique para Iniciar o Upload';
    } else if (num > 0 && num < 1.0) {
      return '${(num * 100).toStringAsFixed(1)}%';
    }
    return 'Upload Completo!';
  }

  void insert() {
    rng += Random().nextDouble();
    // frasePrincipal = '${}';
    if (rng > 1.0) {
      rng = 1.0;
    }

    setState(
      () {
        rng;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              rng = 0.0;
            });
          },
          child: const Icon(Icons.autorenew),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () => insert(),
                icon: const Icon(Icons.upload),
                label: const Text('Upload'),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  textState(rng),
                  style: const TextStyle(
                      fontSize: 15,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: LinearProgressIndicator(
                  minHeight: 10,
                  value: rng,
                  color: rng == totalValue ? Colors.green : Colors.orange,
                  backgroundColor: Colors.amber,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
