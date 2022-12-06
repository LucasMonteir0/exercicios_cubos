import 'package:async_timer/ex2_bomb/views/home_page.dart';
import 'package:flutter/material.dart';

import 'boom_theme.dart';

class BombApp extends StatelessWidget {
  const BombApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const HomePage(),
      //   '/seconds': (context) => BombPage(
      //         duration: _duration,
      //       ),

      // },
      theme: BoomTheme.theme(),
      home: const HomePage(),
    );
  }
}
