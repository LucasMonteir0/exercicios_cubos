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
          primarySwatch: Colors.grey,
          textTheme: TextTheme(
              bodyText1: const TextStyle(color: Colors.white, fontSize: 20),
              bodyText2: TextStyle(color: Colors.grey.shade600))),
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
  //REALMENTE PRECISA CRIAR 2 CONTROLLERS?

  final textFieldController1 = TextEditingController();
  final textFieldController2 = TextEditingController();
  int result = 0;

  void clearText() {
    textFieldController1.clear();
    textFieldController2.clear();

    setState(() {
      result = 0;
    });
  }
// debugPrint(textFieldController1.text.toString());
  // debugPrint(textFieldController2.text.toString());

  void calculator() {
    if (result == 0) {
      result = int.parse(textFieldController1.text) +
          int.parse(textFieldController2.text);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculadora Simples',
          style: theme.textTheme.bodyText1,
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Resposta: $result',
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        const SizedBox(height: 80),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          SizedBox(
              width: 136,
              child: TextFormField(
                inputFormatters: [
                  FilteringTextInputFormatter(RegExp(r'[0-9]'), allow: true)
                ],
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                decoration: textFieldDecoration('Primeiro Número'),
                controller: textFieldController1,
                autofocus: true,
              )),
          // SizedBox(width: 50),
          SizedBox(
              width: 136,
              child: TextFormField(
                inputFormatters: [
                  FilteringTextInputFormatter(RegExp(r'[0-9]'), allow: true)
                ],
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                decoration: textFieldDecoration('Segundo Número'),
                controller: textFieldController2,
              )),
        ]),
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () => calculator(),
              child: Text('SOMAR', style: theme.textTheme.bodyText1),
            ),
            ElevatedButton(
              onPressed: clearText,
              child: Text('LIMPAR', style: theme.textTheme.bodyText1),
            ),
          ],
        )
      ]),
    );
  }

  InputDecoration textFieldDecoration(String helperText) {
    return InputDecoration(
      filled: true,
      border: const OutlineInputBorder(),
      labelText: 'Inserir Número',
      helperText: helperText,
    );
  }

  @override
  void dispose() {
    textFieldController1.dispose();
    textFieldController2.dispose();
    super.dispose();
  }
}
