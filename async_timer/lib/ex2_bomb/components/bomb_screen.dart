import 'package:flutter/material.dart';

class BombScreen extends StatelessWidget {
  const BombScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 50.0),
          height: 500,
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              Image.network(
                'https://i.pinimg.com/originals/97/00/ff/9700ff5255003108cbb1c7b49e666637.gif',
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Text('Passe a bomba'),
        )
      ],
    );
  }
}
