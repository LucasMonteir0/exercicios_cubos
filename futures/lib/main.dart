import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:futures/user_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int? random;
  bool isSelected = false;

  Future<Widget> _getFolder() async {
    return await Future.delayed(
        const Duration(seconds: 1),
        () async => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(await selectedFolder()),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isSelected = false;
                    });
                  },
                  child: const Text('Back'),
                )
              ],
            ));
  }

  Future<String> selectedFolder() async {
    final folder = await rootBundle.loadString('assets/user$random.json');
    final stringFolder = folder.toString();
    final mapFolder = jsonDecode(stringFolder);
    return UserModel(mapFolder["nome"], mapFolder["nascimento"]).toString();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: isSelected
              ? FutureBuilder(
                  future: _getFolder(),
                  builder: ((context, snapshot) {
                    if (snapshot.hasData) {
                      return Center(child: snapshot.data);
                    } else if (snapshot.hasError) {
                      return Text('erro');
                    }

                    return const CircularProgressIndicator();
                  }))
              : ElevatedButton(
                  onPressed: () {
                    setState(() {
                      random = Random().nextInt(6) + 1;
                      isSelected = true;
                    });
                  },
                  child: const Text('Click Here'),
                ),
        ),
      ),
    );
  }
}
