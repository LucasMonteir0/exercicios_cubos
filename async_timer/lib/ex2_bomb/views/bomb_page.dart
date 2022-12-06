import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import '../components/bomb_screen.dart';
import '../components/explosion_screen.dart';

class BombPage extends StatefulWidget {
  const BombPage({
    super.key,
  });

  @override
  State<BombPage> createState() => _BombPageState();
}

class _BombPageState extends State<BombPage> {
  final int _random = Random().nextInt(61);
  Timer? _timer;
  Duration _duration = const Duration();

  @override
  void initState() {
    super.initState();

    _duration = Duration(seconds: _random);
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) => countDown());
  }

  void countDown() {
    int secondsReductor = 1;
    setState(() {
      final seconds = _duration.inSeconds - secondsReductor;
      if (seconds < 0) {
        _timer!.cancel();
      } else {
        _duration = Duration(seconds: seconds);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: (_timer?.isActive ?? false)
            ? const BombScreen()
            : const ExplosionScreen(),
      ),
    );
  }
}
