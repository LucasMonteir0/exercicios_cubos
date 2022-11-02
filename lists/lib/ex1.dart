import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF08E0BC),
            foregroundColor: Color(0xFF015B4B)),
      ),
      debugShowCheckedModeBanner: false,
      home: const ListaInfinita(),
    );
  }
}

class ListaInfinita extends StatelessWidget {
  const ListaInfinita({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista "Infinita"'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView.builder(
            itemCount: 1000,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  color: Colors.black12,
                  child: ListTile(
                    leading: const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    title: Center(
                        child: Text(
                      'Item nº: ${index + 1}',
                      style: const TextStyle(
                          color: Color(0xFF015B4B), fontSize: 18),
                    )),
                  ),
                ),
              );
            })),
      ),
    );
  }
}
