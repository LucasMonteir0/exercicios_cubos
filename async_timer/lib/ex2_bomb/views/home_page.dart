import 'package:async_timer/ex2_bomb/views/bomb_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 56.0),
              child: Text('Corra da Bomba'),
            ),
            SizedBox(
              width: 232,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BombPage()),
                  );
                },
                child: const Text(
                  'INICAR',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
