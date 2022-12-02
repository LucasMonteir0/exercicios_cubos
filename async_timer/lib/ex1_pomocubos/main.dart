import 'dart:async';

import 'package:flutter/material.dart';

import 'ex1_theme.dart';

void main() {
  runApp(const PomoCubos());
}

class PomoCubos extends StatefulWidget {
  const PomoCubos({super.key});

  @override
  State<PomoCubos> createState() => _PomoCubosState();
}

class _PomoCubosState extends State<PomoCubos> {
  Timer? timer;
  Duration duration = const Duration(minutes: 25);

  @override
  void initState() {
    super.initState();
  }

  void start() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
  }

  void stop() {
    setState(() => timer!.cancel());
  }

  void setCountDown() {
    int reduceSecondsBy = 1;
    setState(() {
      final seconds = duration.inSeconds - reduceSecondsBy;

      if (seconds < 0) {
        timer!.cancel();
        duration = const Duration(minutes: 25);
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = strDigits(duration.inMinutes);
    final seconds = strDigits(duration.inSeconds.remainder(60));
    bool isActive = timer?.isActive ?? false;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: PomoTheme.theme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('PomoCubos'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 200.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  isActive ? 'Ativo' : 'Inativo',
                  // style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  style: textTheme.subtitle1!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
                  child: Text(
                    '$minutes:$seconds',
                  ),
                ),
                SizedBox(
                  width: 250.0,
                  child: ElevatedButton(
                    onPressed: isActive ? stop : start,
                    child: Text(isActive ? 'Stop' : 'Start'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
