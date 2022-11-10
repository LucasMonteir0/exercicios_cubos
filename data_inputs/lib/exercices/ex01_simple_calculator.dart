import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // COMO FAZER PARA VALIDAR OS INPUTS E MOSTRAR A RESPOSTA?

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text('Resposta: 0',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        const SizedBox(height: 80),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: const [
          MyTextField(),
          // SizedBox(width: 50),
          MyTextField(),
        ]),
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('SOMAR'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('LIMPAR'),
            ),
          ],
        )
      ]),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 136,
        child: TextField(
          inputFormatters: [
            FilteringTextInputFormatter(RegExp(r'[0-9]'), allow: true)
          ],
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.number,
          decoration: textFieldDecoration(),
        ));
  }
}

InputDecoration textFieldDecoration() {
  return const InputDecoration(
    filled: true,
    border: OutlineInputBorder(),
    labelText: 'Inserir Número',
  );
}
