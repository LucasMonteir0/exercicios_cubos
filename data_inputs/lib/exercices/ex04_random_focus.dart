import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF195F1E)),
            textTheme: const TextTheme(
                bodyText1: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                bodyText2: TextStyle(
                    color: Color(0xFF195F1E),
                    fontSize: 40,
                    fontWeight: FontWeight.bold)),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF195F1E))))),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final focusController1 = FocusNode();

  final focusController2 = FocusNode();

  final focusController3 = FocusNode();

  final focusController4 = FocusNode();

  final focusController5 = FocusNode();
  int random = 0;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Random Focus',
          style: theme.textTheme.bodyText1,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text('Sorteado: ${random + 1}'),
            ),
            TextFormField(
              focusNode: focusController1,
            ),
            TextFormField(
              focusNode: focusController2,
            ),
            TextFormField(
              focusNode: focusController3,
            ),
            TextFormField(
              focusNode: focusController4,
            ),
            TextFormField(
              focusNode: focusController5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: SizedBox(
                width: 500,
                child: ElevatedButton(
                    onPressed: () {
                      random = Random().nextInt(5);
                      setState(() {});
                      if (random == 0) {
                        focusController1.requestFocus();
                      } else if (random == 1) {
                        focusController2.requestFocus();
                      } else if (random == 2) {
                        focusController3.requestFocus();
                      } else if (random == 3) {
                        focusController4.requestFocus();
                      } else if (random == 4) {
                        focusController5.requestFocus();
                      }
                    },
                    child: Text(
                      'Focus Random',
                      style: theme.textTheme.bodyText1,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
