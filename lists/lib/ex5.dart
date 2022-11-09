// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyCalendarPage());
  }
}

class MyCalendarPage extends StatefulWidget {
  const MyCalendarPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyCalendarPage> createState() => _MyCalendarPageState();
}

class _MyCalendarPageState extends State<MyCalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF901039),
        title: const Text('ErBienBi - Hospedagens'),
      ),
      body: Column(
        children: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Selecione as datas da sua reserva',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          MyGridView(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Abril 2022',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}

class MyGridView extends StatelessWidget {
  const MyGridView({
    super.key,
  });

  final SliverGridDelegateWithFixedCrossAxisCount gridDelegate =
      const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 7,
    crossAxisSpacing: 2,
    mainAxisSpacing: 2,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          itemCount: 31,
          gridDelegate: gridDelegate,
          itemBuilder: (context, index) {
            return DateCard(index);
          }),
    );
  }
}

class DateCard extends StatelessWidget {
  DateCard(this.index, {super.key});
  final int index;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    // int currentIndex = index + 1;
    return StatefulBuilder(builder: (context, setState) {
      return GestureDetector(
        onTap: () {
          isSelected = !isSelected;
          debugPrint('$isSelected');
          setState((() {}));
        },
        child: Container(
          color: isSelected ? Colors.pink.shade100 : const Color(0xFFE5DFDF),
          child: Padding(
            padding: const EdgeInsets.only(top: 3.0, left: 3.0),
            child: Text(
              '${index + 1}',
              style: const TextStyle(
                  color: Color(0xFFB25C77), fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
    });
  }
}
