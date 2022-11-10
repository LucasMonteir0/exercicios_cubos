import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const MyLoginScreen(),
        theme: ThemeData(
            primarySwatch: Colors.indigo,
            scaffoldBackgroundColor: Colors.amber.shade100,
            textTheme: const TextTheme(
                bodyText2: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo))));
  }
}

class MyLoginScreen extends StatefulWidget {
  const MyLoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MyLoginScreen> createState() => _MyLoginScreenState();
}

class _MyLoginScreenState extends State<MyLoginScreen> {
  bool obscuredText = true;

  final loginTextFieldController = TextEditingController();
  final passwordTextFieldController = TextEditingController();

  void showLoginDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text('Teste'),
          );
        });
  }

  void loginDialogMessage(selectedField) {
    if (selectedField != null) {
      loginTextFieldController.text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Text('Login'),
            ),
            TextFormField(
              autofocus: true,
              decoration: textFieldDecoration(labelText: 'Usuário'),
            ),
            const SizedBox(height: 5),
            TextFormField(
              obscureText: obscuredText,
              maxLength: 8,
              decoration: textFieldDecoration(
                labelText: 'Senha',
              ).copyWith(
                  helperText: 'Máximo 8 caratceres',
                  suffixIcon: ExcludeFocus(
                      child: IconButton(
                    icon: Icon(
                        obscuredText ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        obscuredText = !obscuredText;
                      });
                    },
                  ))),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  showLoginDialog();
                },
                child: const Text('Entrar'),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  InputDecoration textFieldDecoration({
    String? labelText,
  }) {
    return InputDecoration(
      filled: true,
      labelText: labelText,
      fillColor: Colors.white,
    );
  }

  @override
  void dispose() {
    loginTextFieldController.dispose();
    passwordTextFieldController.dispose();
    super.dispose();
  }
}

class User {
  static const loginUser = 'Maria';
  static const loginPassword = '12345';
}
