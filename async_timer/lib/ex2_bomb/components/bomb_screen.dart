import 'package:flutter/material.dart';

class BombScreen extends StatelessWidget {
  const BombScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            const SizedBox(
              width: 36.0,
            ),
            Image.network(
              'https://i.pinimg.com/originals/97/00/ff/9700ff5255003108cbb1c7b49e666637.gif',
              height: 350,
              fit: BoxFit.contain,
            ),
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        const Text('Passe a bomba')
      ],
    );
  }
}
