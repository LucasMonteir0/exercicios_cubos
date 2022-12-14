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
  bool isUserSelected = false;

  Future<Widget> _getUser() {
    return Future.delayed(
        const Duration(seconds: 5),
        () async => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(await _selectedUser()),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isUserSelected = false;
                    });
                  },
                  child: const Text('Back'),
                )
              ],
            ));
  }

  Future<String> _selectedUser() async {
    final folder = await rootBundle
        .loadString('assets/user$random.json'); // RETORNA STRING
    // final stringFolder = folder.toString();
    final mapFolder = jsonDecode(folder);
    return UserModel(mapFolder["nome"], mapFolder["nascimento"]).toString();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: isUserSelected
              ? FutureBuilder(
                  future: _getUser(),
                  builder: ((context, snapshot) {
                    if (snapshot.hasData) {
                      return Center(child: snapshot.data);
                    } else if (snapshot.hasError) {
                      return const Text('erro');
                    }

                    return const CircularProgressIndicator();
                  }))
              : ElevatedButton(
                  onPressed: () {
                    setState(() {
                      random = Random().nextInt(6) + 1;
                      isUserSelected = true;
                    });
                  },
                  child: const Text('Click Here'),
                ),
        ),
      ),
    );
  }
}
