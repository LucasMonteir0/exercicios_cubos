import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Card(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blueAccent, Colors.purpleAccent],
            ),
          ),
          child: const Center(
            child: Text(
              'Flutter Gradient!',
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}


// class App extends StatelessWidget {
//   const App({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Card(
//         color: Colors.pinkAccent,
//         child: Center(
//           child: Text(
//             'Flutter',
//             style: TextStyle(fontSize: 32, color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }
