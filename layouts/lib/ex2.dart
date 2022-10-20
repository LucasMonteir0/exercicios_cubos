import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyDrawerApp(),
    );
  }
}

class MyDrawerApp extends StatelessWidget {
  const MyDrawerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Menu Drawer',
          style: TextStyle(color: Colors.pink.shade100),
        ),
        backgroundColor: Colors.pink.shade700,
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 251, 225, 234),
        child: ListView(
          children: const [
            ListTile(
              leading: Icon(
                Icons.flash_on, // arrow ou chevron
                size: 45,
                color: Colors.blue,
              ),
              title: Text('Flutter'),
              subtitle: Text('All is widgets!'),
            ),
            ListTile(
              leading: Icon(
                Icons.tag_faces, // arrow ou chevron
                size: 45,
                color: Colors.pink,
              ),
              title: Text('Dart'),
              subtitle: Text('Is so strong!'),
            ),
            ListTile(
              leading: Icon(
                Icons.coffee, // arrow ou chevron
                size: 45,
                color: Colors.brown,
              ),
              title: Text('Cafessíneo'),
              subtitle: Text('Quero caféééé!'),
            ),
          ],
        ),
      ),
    );
  }
}
