import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void showAgeDialog() {
    showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            title: dialogMessage() ?? const Text('Insira sua idade'),
            actions: [
              TextButton(
                  onPressed: Navigator.of(context).pop, child: const Text('OK'))
            ],
          );
        }));
  }

  final textFieldController = TextEditingController();

  dynamic dialogMessage() {
    int textInput = int.parse(textFieldController.text);
      if (textInput < 16) {
        return const Text('Não pode votar');
      } else if (textInput == 16 || textInput == 17 || textInput > 65) {
        return const Text('Voto Facultativo');
      } else if (textInput >= 18 && textInput <= 65) {
        return const Text('Voto Obrigatório');
      } else { 
        return const Text('Insira a idade');
     
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Podes Votar?'),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0),
          child: TextFormField(
            controller: textFieldController,
            autofocus: true,
            inputFormatters: [
              FilteringTextInputFormatter(RegExp(r"[0-9]"), allow: true)
            ],
            decoration: const InputDecoration(labelText: 'Informe sua idade'),
          ),
        ),
        ElevatedButton(
            onPressed: showAgeDialog, child: const Text('Verificar Idade'))
      ]),
    );
  }
  @override
  void dispose() {
    textFieldController.dispose();
    super.dispose();
  }
}
