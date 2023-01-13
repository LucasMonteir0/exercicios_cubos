import 'package:api_consumption/theme.dart';
import 'package:api_consumption/ui/view/home_page.dart';
import 'package:flutter/material.dart';

class MegaCineApp extends StatefulWidget {
  const MegaCineApp({super.key});

  @override
  State<MegaCineApp> createState() => _MegaCineAppState();
}

class _MegaCineAppState extends State<MegaCineApp> {
  bool _isDark = false;
  ThemeData theme = MyTheme.light();

  void switchTheme(bool value) {
    if (_isDark) {
      theme = MyTheme.light();
    } else {
      theme = MyTheme.dark();
    }

    setState(() {
      _isDark = !_isDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: HomePage(
        switchValue: _isDark,
        onChangedSwitch: switchTheme,
      ),
    );
  }
}
