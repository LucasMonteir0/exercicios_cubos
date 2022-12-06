import 'package:flutter/material.dart';

class ExplosionScreen extends StatelessWidget {
  const ExplosionScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Você Perdeu!!!'),
        Image.network(
          'https://opengameart.org/sites/default/files/explosion1.gif',
          height: 400,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: 232,
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('VOLTAR')),
        )
      ],
    );
  }
}