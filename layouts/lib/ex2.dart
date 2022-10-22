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
        // actions: [Drawer()],
        actions: [
          Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: const Icon(Icons.person),
            );
          }),
        ],
      ),
      endDrawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 251, 225, 234),
        child: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.flash_on, size: 45, color: Colors.blue),
              title: Text('Flutter'),
              subtitle: Text('All is widgets!'),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            ListTile(
              leading: Icon(Icons.tag_faces, size: 45, color: Colors.pink),
              title: Text('Dart'),
              subtitle: Text('Is so strong!'),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            ListTile(
              leading: Icon(Icons.coffee, size: 45, color: Colors.brown),
              title: Text('Cafessíneo'),
              subtitle: Text('Quero caféééé!'),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
          ],
        ),
      ),
    );
  }
}
