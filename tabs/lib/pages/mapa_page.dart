import 'package:flutter/material.dart';

import '../resources/images.dart';

class MapaPage extends StatelessWidget {
  const MapaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Image.network(Images.mapa),
    );
  }
}
