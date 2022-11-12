import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.pink,
          textTheme: const TextTheme(
              bodyText2: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink))),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final birthDateController = TextEditingController();

  showBirthDatePicker() {
    final now = DateTime.now();

    showDatePicker(
      context: context,
      firstDate: DateTime(1900),
      initialDate: now,
      lastDate: now,
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      initialDatePickerMode: DatePickerMode.year,
    ).then((selectedDate) {
      if (selectedDate != null) {
        setState(() {
          // birthDateController.text = '${now.year - selectedDate.year}';
          if (now.year > selectedDate.year) {
            if (now.month > selectedDate.month) {
              birthDateController.text = '${now.year - selectedDate.year}';
            } else if (now.month < selectedDate.month) {
              birthDateController.text = ' ${now.year - 1 - selectedDate.year}';
            } else {
              if (now.day > selectedDate.day) {
                birthDateController.text = '${now.year - selectedDate.year}';
              } else {
                birthDateController.text =
                    '${now.year - 1 - selectedDate.year}';
              }
            }
          }
        });
      } else {
        return 'Insira sua idade';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Idade'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: birthDateController.text.isEmpty
                  ? const Text('Insira a sua idade:')
                  : Text('Você tem ${birthDateController.text} anos de vida.'),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 150,
              height: 40,
              child: ElevatedButton(
                  onPressed: () {
                    showBirthDatePicker();
                  },
                  child: const Text(
                    'Calendar',
                    style: TextStyle(fontSize: 20),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
