import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          width: 500,
          height: 500,
          child: GridView.builder(
            itemCount: 31,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
            ),
            itemBuilder: (context, index) {
              return GridTile(
                child: GestureDetector(
                  onTap: () {
                    isSelected = !isSelected;
                    setState(() {});
                  },
                  child: Container(
                    color: isSelected ? Colors.brown : Colors.pink,
                  ),
                ),
                // Text('$currentIndex'),
              );
            },
          ),
        ),
      ),
    );
  }
}
