import 'package:flutter/material.dart';

import '../resources/images.dart';
import '../resources/strings.dart';

class PasseiosPage extends StatelessWidget {
  const PasseiosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
      Padding(
        padding: EdgeInsets.only(left: 20.0, top: 30.0),
        child: Text(
          'Pontos Turísticos de Porto',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      _PageSection(
          nome: Strings.ponteLuis,
          imagem: Images.ponteLuis,
          texto: Strings.textoPonte),
      _PageSection(
          nome: Strings.torreClreigo,
          imagem: Images.torreClreigo,
          texto: Strings.textoTorre),
      _PageSection(
          nome: Strings.livrariaLello,
          imagem: Images.livrariaLello,
          texto: Strings.textoLivraria),
    ]);
  }
}

class _PageSection extends StatelessWidget {
  const _PageSection({
    required this.nome,
    required this.imagem,
    required this.texto,
  });

  final String nome;
  final String imagem;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: const Key('7890'),
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            nome,
            textAlign: TextAlign.left,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
            child: Image.network(imagem),
          ),
          Text(
            texto,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
